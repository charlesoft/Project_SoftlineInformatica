void 0===jQuery.migrateMute&&(jQuery.migrateMute=!0),function(t,e,n){function i(n){var i=e.console;s[n]||(s[n]=!0,t.migrateWarnings.push(n),i&&i.warn&&!t.migrateMute&&(i.warn("JQMIGRATE: "+n),t.migrateTrace&&i.trace&&i.trace()))}function o(e,o,s,r){if(Object.defineProperty)try{return Object.defineProperty(e,o,{configurable:!0,enumerable:!0,get:function(){return i(r),s},set:function(t){i(r),s=t}}),n}catch(a){}t._definePropertyBroken=!0,e[o]=s}var s={};t.migrateWarnings=[],!t.migrateMute&&e.console&&e.console.log&&e.console.log("JQMIGRATE: Logging is active"),t.migrateTrace===n&&(t.migrateTrace=!0),t.migrateReset=function(){s={},t.migrateWarnings.length=0},"BackCompat"===document.compatMode&&i("jQuery is not compatible with Quirks Mode");var r=t("<input/>",{size:1}).attr("size")&&t.attrFn,a=t.attr,l=t.attrHooks.value&&t.attrHooks.value.get||function(){return null},c=t.attrHooks.value&&t.attrHooks.value.set||function(){return n},u=/^(?:input|button)$/i,d=/^[238]$/,p=/^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,f=/^(?:checked|selected)$/i;o(t,"attrFn",r||{},"jQuery.attrFn is deprecated"),t.attr=function(e,o,s,l){var c=o.toLowerCase(),h=e&&e.nodeType;return l&&(4>a.length&&i("jQuery.fn.attr( props, pass ) is deprecated"),e&&!d.test(h)&&(r?o in r:t.isFunction(t.fn[o])))?t(e)[o](s):("type"===o&&s!==n&&u.test(e.nodeName)&&e.parentNode&&i("Can't change the 'type' of an input or button in IE 6/7/8"),!t.attrHooks[c]&&p.test(c)&&(t.attrHooks[c]={get:function(e,i){var o,s=t.prop(e,i);return s===!0||"boolean"!=typeof s&&(o=e.getAttributeNode(i))&&o.nodeValue!==!1?i.toLowerCase():n},set:function(e,n,i){var o;return n===!1?t.removeAttr(e,i):(o=t.propFix[i]||i,o in e&&(e[o]=!0),e.setAttribute(i,i.toLowerCase())),i}},f.test(c)&&i("jQuery.fn.attr('"+c+"') may use property instead of attribute")),a.call(t,e,o,s))},t.attrHooks.value={get:function(t,e){var n=(t.nodeName||"").toLowerCase();return"button"===n?l.apply(this,arguments):("input"!==n&&"option"!==n&&i("jQuery.fn.attr('value') no longer gets properties"),e in t?t.value:null)},set:function(t,e){var o=(t.nodeName||"").toLowerCase();return"button"===o?c.apply(this,arguments):("input"!==o&&"option"!==o&&i("jQuery.fn.attr('value', val) no longer sets properties"),t.value=e,n)}};var h,m,g=t.fn.init,v=t.parseJSON,y=/^([^<]*)(<[\w\W]+>)([^>]*)$/;t.fn.init=function(e,n,o){var s;return e&&"string"==typeof e&&!t.isPlainObject(n)&&(s=y.exec(t.trim(e)))&&s[0]&&("<"!==e.charAt(0)&&i("$(html) HTML strings must start with '<' character"),s[3]&&i("$(html) HTML text after last tag is ignored"),"#"===s[0].charAt(0)&&(i("HTML string cannot start with a '#' character"),t.error("JQMIGRATE: Invalid selector string (XSS)")),n&&n.context&&(n=n.context),t.parseHTML)?g.call(this,t.parseHTML(s[2],n,!0),n,o):g.apply(this,arguments)},t.fn.init.prototype=t.fn,t.parseJSON=function(t){return t||null===t?v.apply(this,arguments):(i("jQuery.parseJSON requires a valid JSON string"),null)},t.uaMatch=function(t){t=t.toLowerCase();var e=/(chrome)[ \/]([\w.]+)/.exec(t)||/(webkit)[ \/]([\w.]+)/.exec(t)||/(opera)(?:.*version|)[ \/]([\w.]+)/.exec(t)||/(msie) ([\w.]+)/.exec(t)||0>t.indexOf("compatible")&&/(mozilla)(?:.*? rv:([\w.]+)|)/.exec(t)||[];return{browser:e[1]||"",version:e[2]||"0"}},t.browser||(h=t.uaMatch(navigator.userAgent),m={},h.browser&&(m[h.browser]=!0,m.version=h.version),m.chrome?m.webkit=!0:m.webkit&&(m.safari=!0),t.browser=m),o(t,"browser",t.browser,"jQuery.browser is deprecated"),t.sub=function(){function e(t,n){return new e.fn.init(t,n)}t.extend(!0,e,this),e.superclass=this,e.fn=e.prototype=this(),e.fn.constructor=e,e.sub=this.sub,e.fn.init=function(i,o){return o&&o instanceof t&&!(o instanceof e)&&(o=e(o)),t.fn.init.call(this,i,o,n)},e.fn.init.prototype=e.fn;var n=e(document);return i("jQuery.sub() is deprecated"),e},t.ajaxSetup({converters:{"text json":t.parseJSON}});var b=t.fn.data;t.fn.data=function(e){var o,s,r=this[0];return!r||"events"!==e||1!==arguments.length||(o=t.data(r,e),s=t._data(r,e),o!==n&&o!==s||s===n)?b.apply(this,arguments):(i("Use of jQuery.fn.data('events') is deprecated"),s)};var w=/\/(java|ecma)script/i,x=t.fn.andSelf||t.fn.addBack;t.fn.andSelf=function(){return i("jQuery.fn.andSelf() replaced by jQuery.fn.addBack()"),x.apply(this,arguments)},t.clean||(t.clean=function(e,o,s,r){o=o||document,o=!o.nodeType&&o[0]||o,o=o.ownerDocument||o,i("jQuery.clean() is deprecated");var a,l,c,u,d=[];if(t.merge(d,t.buildFragment(e,o).childNodes),s)for(c=function(t){return!t.type||w.test(t.type)?r?r.push(t.parentNode?t.parentNode.removeChild(t):t):s.appendChild(t):n},a=0;null!=(l=d[a]);a++)t.nodeName(l,"script")&&c(l)||(s.appendChild(l),l.getElementsByTagName!==n&&(u=t.grep(t.merge([],l.getElementsByTagName("script")),c),d.splice.apply(d,[a+1,0].concat(u)),a+=u.length));return d});var C=t.event.add,k=t.event.remove,T=t.event.trigger,$=t.fn.toggle,_=t.fn.live,S=t.fn.die,j="ajaxStart|ajaxStop|ajaxSend|ajaxComplete|ajaxError|ajaxSuccess",N=RegExp("\\b(?:"+j+")\\b"),E=/(?:^|\s)hover(\.\S+|)\b/,A=function(e){return"string"!=typeof e||t.event.special.hover?e:(E.test(e)&&i("'hover' pseudo-event is deprecated, use 'mouseenter mouseleave'"),e&&e.replace(E,"mouseenter$1 mouseleave$1"))};t.event.props&&"attrChange"!==t.event.props[0]&&t.event.props.unshift("attrChange","attrName","relatedNode","srcElement"),t.event.dispatch&&o(t.event,"handle",t.event.dispatch,"jQuery.event.handle is undocumented and deprecated"),t.event.add=function(t,e,n,o,s){t!==document&&N.test(e)&&i("AJAX events should be attached to document: "+e),C.call(this,t,A(e||""),n,o,s)},t.event.remove=function(t,e,n,i,o){k.call(this,t,A(e)||"",n,i,o)},t.fn.error=function(){var t=Array.prototype.slice.call(arguments,0);return i("jQuery.fn.error() is deprecated"),t.splice(0,0,"error"),arguments.length?this.bind.apply(this,t):(this.triggerHandler.apply(this,t),this)},t.fn.toggle=function(e,n){if(!t.isFunction(e)||!t.isFunction(n))return $.apply(this,arguments);i("jQuery.fn.toggle(handler, handler...) is deprecated");var o=arguments,s=e.guid||t.guid++,r=0,a=function(n){var i=(t._data(this,"lastToggle"+e.guid)||0)%r;return t._data(this,"lastToggle"+e.guid,i+1),n.preventDefault(),o[i].apply(this,arguments)||!1};for(a.guid=s;o.length>r;)o[r++].guid=s;return this.click(a)},t.fn.live=function(e,n,o){return i("jQuery.fn.live() is deprecated"),_?_.apply(this,arguments):(t(this.context).on(e,this.selector,n,o),this)},t.fn.die=function(e,n){return i("jQuery.fn.die() is deprecated"),S?S.apply(this,arguments):(t(this.context).off(e,this.selector||"**",n),this)},t.event.trigger=function(t,e,n,o){return n||N.test(t)||i("Global events are undocumented and deprecated"),T.call(this,t,e,n||document,o)},t.each(j.split("|"),function(e,n){t.event.special[n]={setup:function(){var e=this;return e!==document&&(t.event.add(document,n+"."+t.guid,function(){t.event.trigger(n,null,e,!0)}),t._data(this,n,t.guid++)),!1},teardown:function(){return this!==document&&t.event.remove(document,n+"."+t._data(this,n)),!1}}})}(jQuery,window);