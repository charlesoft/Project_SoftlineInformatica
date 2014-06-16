/*
* Copyright (C) 2009 Joel Sutherland
* Licenced under the MIT license
* http://www.newmediacampaigns.com/page/jquery-flickr-plugin
*
* Available tags for templates:
* title, link, date_taken, description, published, author, author_id, tags, image*
*/
!function(t){t.fn.jflickrfeed=function(e,n){e=t.extend(!0,{flickrbase:"http://api.flickr.com/services/feeds/",feedapi:"photos_public.gne",limit:20,qstrings:{lang:"en-us",format:"json",jsoncallback:"?"},cleanDescription:!0,useTemplate:!0,itemTemplate:"",itemCallback:function(){}},e);var i=e.flickrbase+e.feedapi+"?",o=!0;for(var s in e.qstrings)o||(i+="&"),i+=s+"="+e.qstrings[s],o=!1;return t(this).each(function(){var o=t(this),s=this;t.getJSON(i,function(i){t.each(i.items,function(t,n){if(t<e.limit){if(e.cleanDescription){var i=/<p>(.*?)<\/p>/g,r=n.description;i.test(r)&&(n.description=r.match(i)[2],void 0!=n.description&&(n.description=n.description.replace("<p>","").replace("</p>","")))}if(n.image_s=n.media.m.replace("_m","_s"),n.image_t=n.media.m.replace("_m","_t"),n.image_m=n.media.m.replace("_m","_m"),n.image=n.media.m.replace("_m",""),n.image_b=n.media.m.replace("_m","_b"),delete n.media,e.useTemplate){var a=e.itemTemplate;for(var l in n){var c=new RegExp("{{"+l+"}}","g");a=a.replace(c,n[l])}o.append(a)}e.itemCallback.call(s,n)}}),t.isFunction(n)&&n.call(s,i)})})}}(jQuery);