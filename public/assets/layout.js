var tpj=jQuery;tpj.noConflict(),tpj(document).ready(function(){void 0!=tpj.fn.cssOriginal&&(tpj.fn.css=tpj.fn.cssOriginal),tpj(".fullwidthbanner").revolution({delay:9e3,startwidth:1200,startheight:400,onHoverStop:"on",thumbWidth:100,thumbHeight:50,thumbAmount:3,hideThumbs:0,navigationType:"none",navigationArrows:"solo",navigationStyle:"round",navigationHAlign:"left",navigationVAlign:"bottom",navigationHOffset:30,navigationVOffset:30,soloArrowLeftHalign:"left",soloArrowLeftValign:"center",soloArrowLeftHOffset:20,soloArrowLeftVOffset:0,soloArrowRightHalign:"right",soloArrowRightValign:"center",soloArrowRightHOffset:20,soloArrowRightVOffset:0,stopAtSlide:-1,stopAfterLoops:-1,hideCaptionAtLimit:0,hideAllCaptionAtLilmit:0,hideSliderAtLimit:0,fullWidth:"on",fullScreen:"off",fullScreenOffsetContainer:"#topheader-to-offset",shadow:0}),tpj("a[rel^='prettyPhoto']").prettyPhoto({theme:"light_square",social_tools:!1}),tpj(".responsive-video-wrapper").fitVids(),tpj(".flickr-photos-list").jflickrfeed({limit:9,qstrings:{id:"71865026@N00"},itemTemplate:'<li><a href="{{image_b}}"><img src="{{image_s}}" alt="{{title}}" /></a></li>'}),tpj().UItoTop({easingType:"easeOutQuart"}),tpj(".color-skin").click(function(){var t=this.id;tpj(".color-skin").removeClass("active"),tpj(this).addClass("active"),tpj("#main-wrapper").removeClass(),tpj("#main-wrapper").addClass(t)})});var caroufredsel=function(){tpj("#caroufredsel-portfolio-container").carouFredSel({responsive:!0,scroll:1,circular:!1,infinite:!1,items:{visible:{min:1,max:3}},prev:"#portfolio-prev",next:"#portfolio-next",auto:{play:!1}}),tpj("#caroufredsel-clients-container").carouFredSel({responsive:!0,scroll:1,circular:!1,infinite:!1,items:{visible:{min:1,max:4}},prev:"#client-prev",next:"#client-next",auto:{play:!1}})};tpj(window).load(function(){caroufredsel()}),tpj(window).resize(function(){caroufredsel()});