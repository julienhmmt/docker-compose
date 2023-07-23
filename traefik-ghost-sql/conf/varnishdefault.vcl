vcl 4.1;

import std;

backend default {
    .host = "ghostapp";
    .port = "2368";
    .max_connections = 1000;
}

sub vcl_recv {
    # Do not cache the admin and preview pages
    if (
        req.url ~ "^/p/" ||
        req.url ~ "^/ghost/"
    ) {
        return (pass);
    }

    # Non-RFC2616 or CONNECT which is weird.
    if (
        req.method != "GET" &&
        req.method != "HEAD" &&
        req.method != "PUT" &&
        req.method != "POST" &&
        req.method != "TRACE" &&
        req.method != "OPTIONS" &&
        req.method != "DELETE"
    ) {
        return (pipe);
    }

    # Strip hash, server doesn't need it.
    if (req.url ~ "\#") {
        set req.url = regsub(req.url, "\#.*$", "");
    }

    # Remove all cookies for static files & deliver directly
    if (req.url ~ "^[^?]*\.(7z|avi|bmp|bz2|css|csv|doc|docx|eot|flac|flv|gif|gz|ico|jpeg|jpg|js|less|mka|mkv|mov|mp3|mp4|mpeg|mpg|odt|ogg|ogm|opus|otf|pdf|png|ppt|pptx|rar|rtf|svg|svgz|swf|tar|tbz|tgz|ttf|txt|txz|wav|webm|webp|woff|woff2|xls|xlsx|xml|xz|zip)(\?.*)?$") {
        unset req.http.Cookie;
        return (hash);
    }

    return (hash);
}

sub vcl_backend_response {
    # Don't cache 50x responses
    if (
        beresp.status == 500 ||
        beresp.status == 502 ||
        beresp.status == 503 ||
        beresp.status == 504
    ) {
        return (abandon);
    }

    if(
        bereq.url ~ "^/p/" ||
        bereq.url ~ "^/ghost/"
    ) {
        set beresp.uncacheable = true;
        return (deliver);
    }

    # Don't cache backend response to posted requests
    if (bereq.method == "POST") {
        set beresp.uncacheable = true;
        return (deliver);
    }

    # Allow stale content, in case the backend goes down
    set beresp.grace = 12h;

    # This is how long Varnish will keep cached content
    set beresp.ttl = 180s;

    if (beresp.http.content-type ~ "text/plain|text/css|application/json|application/x-javascript|text/xml|application/xml|application/xml+rss|text/javascript") {
        set beresp.do_gzip = true;
        set beresp.http.cache-control = "public, max-age=1209600";
    }
}