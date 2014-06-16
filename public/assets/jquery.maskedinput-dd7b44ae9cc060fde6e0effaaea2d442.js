/*
	Masked Input plugin for jQuery
	Copyright (c) 2007-2013 Josh Bush (digitalbush.com)
	Licensed under the MIT license (http://digitalbush.com/projects/masked-input-plugin/#license)
	Version: 1.3.1
*/
!function(t){function e(){var t=document.createElement("input"),e="onpaste";return t.setAttribute(e,""),"function"==typeof t[e]?"paste":"input"}var n,i=e()+".mask",o=navigator.userAgent,s=/iphone/i.test(o),r=/android/i.test(o);t.mask={definitions:{9:"[0-9]",a:"[A-Za-z]","*":"[A-Za-z0-9]"},dataName:"rawMaskFn",placeholder:"_"},t.fn.extend({caret:function(t,e){var n;if(0!==this.length&&!this.is(":hidden"))return"number"==typeof t?(e="number"==typeof e?e:t,this.each(function(){this.setSelectionRange?this.setSelectionRange(t,e):this.createTextRange&&(n=this.createTextRange(),n.collapse(!0),n.moveEnd("character",e),n.moveStart("character",t),n.select())})):(this[0].setSelectionRange?(t=this[0].selectionStart,e=this[0].selectionEnd):document.selection&&document.selection.createRange&&(n=document.selection.createRange(),t=0-n.duplicate().moveStart("character",-1e5),e=t+n.text.length),{begin:t,end:e})},unmask:function(){return this.trigger("unmask")},mask:function(e,o){var a,l,c,u,f,d;return!e&&this.length>0?(a=t(this[0]),a.data(t.mask.dataName)()):(o=t.extend({placeholder:t.mask.placeholder,completed:null},o),l=t.mask.definitions,c=[],u=d=e.length,f=null,t.each(e.split(""),function(t,e){"?"==e?(d--,u=t):l[e]?(c.push(new RegExp(l[e])),null===f&&(f=c.length-1)):c.push(null)}),this.trigger("unmask").each(function(){function a(t){for(;++t<d&&!c[t];);return t}function p(t){for(;--t>=0&&!c[t];);return t}function h(t,e){var n,i;if(!(0>t)){for(n=t,i=a(e);d>n;n++)if(c[n]){if(!(d>i&&c[n].test(C[i])))break;C[n]=C[i],C[i]=o.placeholder,i=a(i)}b(),x.caret(Math.max(f,t))}}function m(t){var e,n,i,s;for(e=t,n=o.placeholder;d>e;e++)if(c[e]){if(i=a(e),s=C[e],C[e]=n,!(d>i&&c[i].test(s)))break;n=s}}function g(t){var e,n,i,o=t.which;8===o||46===o||s&&127===o?(e=x.caret(),n=e.begin,i=e.end,0===i-n&&(n=46!==o?p(n):i=a(n-1),i=46===o?a(i):i),y(n,i),h(n,i-1),t.preventDefault()):27==o&&(x.val(_),x.caret(0,w()),t.preventDefault())}function v(e){var n,i,s,l=e.which,u=x.caret();e.ctrlKey||e.altKey||e.metaKey||32>l||l&&(0!==u.end-u.begin&&(y(u.begin,u.end),h(u.begin,u.end-1)),n=a(u.begin-1),d>n&&(i=String.fromCharCode(l),c[n].test(i)&&(m(n),C[n]=i,b(),s=a(n),r?setTimeout(t.proxy(t.fn.caret,x,s),0):x.caret(s),o.completed&&s>=d&&o.completed.call(x))),e.preventDefault())}function y(t,e){var n;for(n=t;e>n&&d>n;n++)c[n]&&(C[n]=o.placeholder)}function b(){x.val(C.join(""))}function w(t){var e,n,i=x.val(),s=-1;for(e=0,pos=0;d>e;e++)if(c[e]){for(C[e]=o.placeholder;pos++<i.length;)if(n=i.charAt(pos-1),c[e].test(n)){C[e]=n,s=e;break}if(pos>i.length)break}else C[e]===i.charAt(pos)&&e!==u&&(pos++,s=e);return t?b():u>s+1?(x.val(""),y(0,d)):(b(),x.val(x.val().substring(0,s+1))),u?e:f}var x=t(this),C=t.map(e.split(""),function(t){return"?"!=t?l[t]?o.placeholder:t:void 0}),_=x.val();x.data(t.mask.dataName,function(){return t.map(C,function(t,e){return c[e]&&t!=o.placeholder?t:null}).join("")}),x.attr("readonly")||x.one("unmask",function(){x.unbind(".mask").removeData(t.mask.dataName)}).bind("focus.mask",function(){clearTimeout(n);var t;_=x.val(),t=w(),n=setTimeout(function(){b(),t==e.length?x.caret(0,t):x.caret(t)},10)}).bind("blur.mask",function(){w(),x.val()!=_&&x.change()}).bind("keydown.mask",g).bind("keypress.mask",v).bind(i,function(){setTimeout(function(){var t=w(!0);x.caret(t),o.completed&&t==x.val().length&&o.completed.call(x)},0)}),w()}))}})}(jQuery);