window.daum = window.daum || {},
function (a) {
    function b() {
        for (var a = 0, b = k.length; b > a; a++) 
            document.write(
                '<script charset="UTF-8" type="text/javascript" src="' + k[a] + '"></script>'
            ),
            document.close();
        i = 2
    }
    function c() {
        for (var a = 0, b = k.length; b > a; a++) {
            var c = document.createElement("script");
            q[k[a]] = !1,
            c.type = "text/javascript",
            c.charset = "utf-8",
            c.src = k[a],
            c.onload = function () {
                var b = k[a];
                return function () {
                    var a = b;
                    q[a] || (q[a] = !0),
                    e() && f()
                }
            }(),
            c.onreadystatechange = function () {
                var b = k[a];
                return function () {
                    /loaded|complete/.test(this.readyState) && (q[b] || (q[b] = !0), e() && f())
                }
            }(),
            document
                .getElementsByTagName("head")[0]
                .appendChild(c)
        }
    }
    function d(a) {
        var b = {};
        return a.replace(/[?&]+([^=&]+)=*([^&]*)/gi, function (a, c, d) {
            b[c] = d
        }),
        b
    }
    function e() {
        for (var a = 0, b = 0, c = k.length; c > b; b++) 
            q[k[b]] && a++;
        return a === k.length
            ? !0
            : !1
    }
    function f() {
        for (i = 2; h[0];) 
            h.shift()()
    }
    function g(a) {
        for (var b in a) 
            if ("autoload" !== b) {
                if (a.hasOwnProperty(b)) 
                    return !1
            }
        else if ("false" !== a[b] && "true" !== a[b]) 
            return !1;
        return !0
    }
    a.postcode = {
        _validParam_: !0
    };
    for (
        var h = [],
        i = 0,
        j = document.getElementsByTagName("script"),
        k = ["//t1.daumcdn.net/postcode/api/core/210803/1627969912456/210803.js"],
        l = 0,
        m = j.length;
        m > l;
        ++l
    ) {
        var n = j[l],
            o = n.src;
        if (/\/map_js_init\/postcode.v2(\.dev){0,1}(\.cbt){0,1}\.js\b/.test(o)) {
            var p = d(o);
            g(p) || (a.postcode._validParam_ = !1),
            "false" !== p.autoload && (b(), i = 2);
            break
        }
    }
    var q = {};
    a.postcode.version = "210803",
    a.postcode.load = function (a) {
        if (a && "function" == typeof a) 
            switch (h.push(a), i) {
                case 0:
                    i = 1,
                    c();
                    break;
                case 2:
                    f()
            }
        },
    j = null
}(window.daum);