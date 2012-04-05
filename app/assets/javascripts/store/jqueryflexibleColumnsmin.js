/**
 * jQuery.FlexibleColumns - Vertical and horizontal auto align blocks using jQuery.
 * Copyright (c) 2010 Igor A.Novitskiy - cake(dot)digger(at)gmail(dot)com | http://www.cake-digger.net
 * Date: 11/17/2010
 * @author Igor A.novitskiy
 * @version 1.0.0
 *
 * http://codecanyon.net/user/cake_digger
 */
(function ($) {
    $.fn.autoColumn = function (c, d) {
        if (!d) d = 'div';
        var f = this.find(d);
        var g = this.width();
        var h = 0;
        f.each(function (k, e) {
            var l = parseFloat($(e).attr('data-place'));
            if (!l) h++;
            else h += l;
        });
        var j = (g - ((h - 1) * c)) / h;
        f.css({
            marginRight: c,
            float: 'left'
        }).each(function (k, e) {
            var l = parseFloat($(e).attr('data-place'));
            if (!l) l = 1;
            $(this).width((j * l) + (c * (l - 1)) - (this.offsetWidth - $(this).width()));
        }).eq(f.length - 1).css({
            marginRight: 0,
            float: 'right'
        });
        return this;
    };
    $.fn.autoAlign = function (c, d) {
        if (!c) c = 'div';
        var f = this.find(c);
        var g = this.width();
        var h = f.length;
        if (h == 1) {
            f.css('width', function (n) {
                return g - (this.offsetWidth - $(this).width());
            }).css({
                marginRight: 0,
                float: 'left'
            });
            return this;
        }
        var j = 0;
        var k = 0;
        f.each(function (n, e) {
            if (j + this.offsetWidth <= g) {
                j += this.offsetWidth;
                k++;
            }
        });
        var l = g - j;
        var m = l / (k - 1);
        if (m < d) {
            f.css({
                marginRight: m,
                float: 'left'
            }).eq(k - 1).css({
                marginRight: 0,
                float: 'right'
            });
        } else {
            l -= d * (k - 1);
            f.each(function (n, e) {
                $(this).width($(this).width() + ((l / 100) * (this.offsetWidth / (j / 100))));
            }).css({
                marginRight: d,
                float: 'left'
            }).eq(k - 1).css({
                marginRight: 0,
                float: 'right'
            });
        }
        if (k != h) {
            for (var i = k; i < h; i++) {
                f.eq(i).css({
                    display: 'none'
                });
            }
        }
        return this;
    };
    $.fn.autoHeight = function (c) {
        var d = 0;
        this.each(function (f, g) {
            var h = $(g).find(c);
            h.each(function (j, e) {
                if ($(this).height() > d) d = $(this).height();
            }).each(function (j) {
                $(this).css({
                    minHeight: d
                });
            });
        });
    };
})(jQuery);