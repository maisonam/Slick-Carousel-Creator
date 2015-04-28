
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Slick Carousel - Carousel Creator</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/offcanvas.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  </head>


</head>

<body>
  <div class="site-wrapper">
	 <div class="wrapper">

    <div class="svg-wrapper">
    <a href="#" id="close">CLOSE</a>
    <svg id="diamond"><text x="0" y="0" transform="matrix(1,0,0,1,150.0001,400.8398)" style="fill:#333; font-weight: 300; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: 'Source Sans Pro', source-sans-pro, sans-serif;">Several lines</text></svg>

    

    </div>
	 

   <div class="main-panel">
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
     
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Slick Carousel Creator</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
             <li class="active"><a href="mailto:ason.matthews@addison-group.net" id="contact">Contact</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </div><!-- /.navbar -->

    <div class="container">

      <div class="row row-offcanvas row-offcanvas-left">

      	<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <aside>
				<h2>Plugin variables <span id="cog">&nbsp;</span></h2>
				<div id="variables">
                    	
                    <form id="changevariables">
                    <fieldset><label for="easing">cssEase</label>
                    <select data-type="select" id="cssEase">
                    	<option>---Select---</option>
                    	<option>linear</option>
                        <option>ease</option>
                        <option>ease-in</option>
                        <option>ease-out</option>
                        <option>ease-in-out</option>
                    </select></fieldset>
                     <fieldset id="input-cubicbezier"><label for="cssEase">Cubic-bezier</label><input type="text" value="" placeholder=".23,.85,.94,.23" /><input type="checkbox" id="showBezier" /> <a href="http://cubic-bezier.com/" target="_blank">Create cubic bezier</a></fieldset>
                    
                     <fieldset><label for="lazyload">lazyload</label><select data-type="select" id="lazyload">
                    	<option>ondemand</option>
                        <option>progressive</option>
                    </select></fieldset>
	              <!--  <fieldset><label for="slidesToShow">slidesToShow</label><input type="text" value="1" id="slidesToShow" /></fieldset> -->
                    <!--<fieldset><label for="slidesToScroll">slidesToScroll</label><input type="text" value="1" id="slidesToScroll" /></fieldset> -->

					</form>

					<ul class="buttons">
            <li><a href="mailto:Developer@addison-group.net&amp;subject=RE:Slick%20Carousel%20Variables&amp;body=Please%20find%20the%20Slick%20Carousel%20'_.defaults'%20variables%20below:%0D%0A%0D%0A" target="_blank" id="download">Send variables</a></li>
            <li><a href="#" id="grab">Grab variables</a></li>

          </ul>
          <ul class="buttons">
						<li><a href="#" id="save">Save</a></li>

            <li><a href="#" id="reset">Reset</a></li>
					</ul>
				</div>
			</aside>
      	</div><!--/sapn-->

        <div id="main" class="col-xs-12 col-sm-12">
          <div class="jumbotron">
            <h1>Carousel Creator</h1>
            <p>A simple but relatively customisable responsive carousel</p>
            <small>Built for Google Chrome, Safari &amp; Firefox web browsers</small>

            
          </div>
          <div class="row">
            <section>
		<div class="clear">&nbsp;</div>
		<header>
			<div class="codedescription">
				
                <article id="democontainer">
                  <div id="popup">
                    <p><span>&ldquo;</span>You can now drag &amp; drop images into the slides!<span>&rdquo;</span></p>
                  </div>
                <div id="plugin">
                        
                        <div class="slider responsive hey" id="slick-track">
                            <div>
                            	<div class="slide-block" data-slide="1"><img src="images/1.jpg" alt="bg image" id="slide1" /><p>Slide 1</p></div>
                            </div>
                            <div>
                            	<div class="slide-block" data-slide="2"><img src="images/2.jpg" alt="bg image" id="slide2" /><p>Slide 2</p></div>
                            </div>
                            <div>
                            	<div class="slide-block" data-slide="3"><img src="images/3.jpg" alt="bg image" id="slide3" /><p>Slide 3</p></div>
                            </div>
                            <div>
                            	<div class="slide-block" data-slide="4"><img src="images/4.jpg" alt="bg image" id="slide4" /><p>Slide 4</p></div>
                            </div>

                            <div>
                              <div class="slide-block" data-slide="5"><img src="images/5.jpg" alt="bg image" id="slide5" /><p>Slide 5</p></div>
                            </div>
                            <div>
                              <div class="slide-block" data-slide="6"><img src="images/6.jpg" alt="bg image" id="slide6" /><p>Slide 6</p></div>
                            </div>
                            <div>
                              <div class="slide-block" data-slide="7"><img src="images/7.jpg" alt="bg image" id="slide7" /><p>Slide 7</p></div>
                            </div>
                            <div>
                              <div class="slide-block" data-slide="8"><img src="images/8.jpg" alt="bg image" id="slide8" /><p>Slide 8</p></div>
                            </div>
                        </div>            
                  </div>
                  

                    
                </article>
			</div>
			
		</header>
		<div class="clear">&nbsp;</div>
                            <!-- <div>
                              <div class="image"><img class="" data-lazy="images/8.jpg" src="images/8.jpg" id="slide8" /><p>Slide 8</p></div>
                            </div> -->


	</section>
          </div><!--/row-->
        </div><!--/span-->

        
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; Ason Matthews X Addison Group 2014</p>
      </footer>

    </div><!--/.container-->

    		</div>
		</div>
  </div>
	<div id="footer-contact">
		<div id="text-variables">

    </div>
    <a href="#" id="close">CLOSE</a>
	</div>

	

	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>




	
  
	<script type="text/javascript" language="javascript" id="plugin">

		/*
     _ _      _       _
 ___| (_) ___| | __  (_)___
/ __| | |/ __| |/ /  | / __|
\__ \ | | (__|   < _ | \__ \
|___/_|_|\___|_|\_(_)/ |___/
                   |__/

 Version: 1.3.11
  Author: Ken Wheeler
 Website: http://kenwheeler.github.io
    Docs: http://kenwheeler.github.io/slick
    Repo: http://github.com/kenwheeler/slick
  Issues: http://github.com/kenwheeler/slick/issues

 */

/* global window, document, define, jQuery, setInterval, clearInterval */

(function(factory) {
    'use strict';
    if (typeof define === 'function' && define.amd) {
        define(['jquery'], factory);
    } else if (typeof exports !== 'undefined') {
        module.exports = factory(require('jquery'));
    } else {
        factory(jQuery);
    }

}(function($) {
    'use strict';
    var Slick = window.Slick || {};

    Slick = (function() {

        var instanceUid = 0;

        function Slick(element, settings) {

            var _ = this,
                responsiveSettings, breakpoint;

            _.defaults = {
                accessibility: true,
                adaptiveHeight: false,
                appendArrows: $(element),
                appendDots: $(element),
                arrows: true,
                asNavFor: null,
                prevArrow: '<button type="button" data-role="none" class="slick-prev">Previous</button>',
                nextArrow: '<button type="button" data-role="none" class="slick-next">Next</button>',
                autoplay: false,
                autoplaySpeed: 3000,
                centerMode: false,
                centerPadding: '50px',
                cssEase: 'ease',
                customPaging: function(slider, i) {
                    return '<button type="button" data-role="none">' + (i + 1) + '</button>';
                },
                dots: false,
                dotsClass: 'slick-dots',
                draggable: true,
                easing: 'linear',
                fade: false,
                focusOnSelect: false,
                infinite: true,
                lazyLoad: 'ondemand',
                onBeforeChange: null,
                onAfterChange: null,
                onInit: null,
                onReInit: null,
                pauseOnHover: true,
                pauseOnDotsHover: false,
                responsive: null,
                rtl: false,
                slide: 'div',
                slidesToShow: 1,
                slidesToScroll: 1,
                speed: 300,
                swipe: true,
                swipeToSlide: false,
                touchMove: true,
                touchThreshold: 5,
                useCSS: true,
                variableWidth: false,
                vertical: false,
                waitForAnimate: true
            };

            _.initials = {
                animating: false,
                dragging: false,
                autoPlayTimer: null,
                currentSlide: 0,
                currentLeft: null,
                direction: 1,
                $dots: null,
                listWidth: null,
                listHeight: null,
                loadIndex: 0,
                $nextArrow: null,
                $prevArrow: null,
                slideCount: null,
                slideWidth: null,
                $slideTrack: null,
                $slides: null,
                sliding: false,
                slideOffset: 0,
                swipeLeft: null,
                $list: null,
                touchObject: {},
                transformsEnabled: false
            };

            $.extend(_, _.initials);

            _.activeBreakpoint = null;
            _.animType = null;
            _.animProp = null;
            _.breakpoints = [];
            _.breakpointSettings = [];
            _.cssTransitions = false;
            _.paused = false;
            _.positionProp = null;
            _.$slider = $(element);
            _.$slidesCache = null;
            _.transformType = null;
            _.transitionType = null;
            _.windowWidth = 0;
            _.windowTimer = null;

            _.options = $.extend({}, _.defaults, settings);

            _.originalSettings = _.options;
            responsiveSettings = _.options.responsive || null;

            if (responsiveSettings && responsiveSettings.length > -1) {
                for (breakpoint in responsiveSettings) {
                    if (responsiveSettings.hasOwnProperty(breakpoint)) {
                        _.breakpoints.push(responsiveSettings[
                            breakpoint].breakpoint);
                        _.breakpointSettings[responsiveSettings[
                            breakpoint].breakpoint] =
                            responsiveSettings[breakpoint].settings;
                    }
                }
                _.breakpoints.sort(function(a, b) {
                    return b - a;
                });
            }

            _.autoPlay = $.proxy(_.autoPlay, _);
            _.autoPlayClear = $.proxy(_.autoPlayClear, _);
            _.changeSlide = $.proxy(_.changeSlide, _);
            _.selectHandler = $.proxy(_.selectHandler, _);
            _.setPosition = $.proxy(_.setPosition, _);
            _.swipeHandler = $.proxy(_.swipeHandler, _);
            _.dragHandler = $.proxy(_.dragHandler, _);
            _.keyHandler = $.proxy(_.keyHandler, _);
            _.autoPlayIterator = $.proxy(_.autoPlayIterator, _);

            _.instanceUid = instanceUid++;

            // A simple way to check for HTML strings
            // Strict HTML recognition (must start with <)
            // Extracted from jQuery v1.11 source
            _.htmlExpr = /^(?:\s*(<[\w\W]+>)[^>]*)$/;

            _.init();

        }

        return Slick;

    }());

    Slick.prototype.addSlide = function(markup, index, addBefore) {

        var _ = this;

        if (typeof(index) === 'boolean') {
            addBefore = index;
            index = null;
        } else if (index < 0 || (index >= _.slideCount)) {
            return false;
        }

        _.unload();

        if (typeof(index) === 'number') {
            if (index === 0 && _.$slides.length === 0) {
                $(markup).appendTo(_.$slideTrack);
            } else if (addBefore) {
                $(markup).insertBefore(_.$slides.eq(index));
            } else {
                $(markup).insertAfter(_.$slides.eq(index));
            }
        } else {
            if (addBefore === true) {
                $(markup).prependTo(_.$slideTrack);
            } else {
                $(markup).appendTo(_.$slideTrack);
            }
        }

        _.$slides = _.$slideTrack.children(this.options.slide);

        _.$slideTrack.children(this.options.slide).detach();

        _.$slideTrack.append(_.$slides);

        _.$slides.each(function(index, element) {
            $(element).attr("index",index);
        });

        _.$slidesCache = _.$slides;

        _.reinit();

    };

    Slick.prototype.animateSlide = function(targetLeft, callback) {

        var animProps = {}, _ = this;

        if(_.options.slidesToShow === 1 && _.options.adaptiveHeight === true && _.options.vertical === false) {
            var targetHeight = _.$slides.eq(_.currentSlide).outerHeight(true);
            _.$list.animate({height: targetHeight},_.options.speed);
        }

        if (_.options.rtl === true && _.options.vertical === false) {
            targetLeft = -targetLeft;
        }
        if (_.transformsEnabled === false) {
            if (_.options.vertical === false) {
                _.$slideTrack.animate({
                    left: targetLeft
                }, _.options.speed, _.options.easing, callback);
            } else {
                _.$slideTrack.animate({
                    top: targetLeft
                }, _.options.speed, _.options.easing, callback);
            }

        } else {

            if (_.cssTransitions === false) {

                $({
                    animStart: _.currentLeft
                }).animate({
                    animStart: targetLeft
                }, {
                    duration: _.options.speed,
                    easing: _.options.easing,
                    step: function(now) {
                        if (_.options.vertical === false) {
                            animProps[_.animType] = 'translate(' +
                                now + 'px, 0px)';
                            _.$slideTrack.css(animProps);
                        } else {
                            animProps[_.animType] = 'translate(0px,' +
                                now + 'px)';
                            _.$slideTrack.css(animProps);
                        }
                    },
                    complete: function() {
                        if (callback) {
                            callback.call();
                        }
                    }
                });

            } else {

                _.applyTransition();

                if (_.options.vertical === false) {
                    animProps[_.animType] = 'translate3d(' + targetLeft + 'px, 0px, 0px)';
                } else {
                    animProps[_.animType] = 'translate3d(0px,' + targetLeft + 'px, 0px)';
                }
                _.$slideTrack.css(animProps);

                if (callback) {
                    setTimeout(function() {

                        _.disableTransition();

                        callback.call();
                    }, _.options.speed);
                }

            }

        }

    };

    Slick.prototype.asNavFor = function(index) {
        var _ = this, asNavFor = _.options.asNavFor != null ? $(_.options.asNavFor).getSlick() : null;
        if(asNavFor != null) asNavFor.slideHandler(index, true);
    };

    Slick.prototype.applyTransition = function(slide) {

        var _ = this,
            transition = {};

        if (_.options.fade === false) {
            transition[_.transitionType] = _.transformType + ' ' + _.options.speed + 'ms ' + _.options.cssEase;
        } else {
            transition[_.transitionType] = 'opacity ' + _.options.speed + 'ms ' + _.options.cssEase;
        }

        if (_.options.fade === false) {
            _.$slideTrack.css(transition);
        } else {
            _.$slides.eq(slide).css(transition);
        }

    };

    Slick.prototype.autoPlay = function() {

        var _ = this;

        if (_.autoPlayTimer) {
            clearInterval(_.autoPlayTimer);
        }

        if (_.slideCount > _.options.slidesToShow && _.paused !== true) {
            _.autoPlayTimer = setInterval(_.autoPlayIterator,
                _.options.autoplaySpeed);
        }

    };

    Slick.prototype.autoPlayClear = function() {

        var _ = this;

        if (_.autoPlayTimer) {
            clearInterval(_.autoPlayTimer);
        }

    };

    Slick.prototype.autoPlayIterator = function() {

        var _ = this;

        if (_.options.infinite === false) {

            if (_.direction === 1) {

                if ((_.currentSlide + 1) === _.slideCount -
                    1) {
                    _.direction = 0;
                }

                _.slideHandler(_.currentSlide + _.options.slidesToScroll);

            } else {

                if ((_.currentSlide - 1 === 0)) {

                    _.direction = 1;

                }

                _.slideHandler(_.currentSlide - _.options.slidesToScroll);

            }

        } else {

            _.slideHandler(_.currentSlide + _.options.slidesToScroll);

        }

    };

    Slick.prototype.buildArrows = function() {

        var _ = this;

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {

            _.$prevArrow = $(_.options.prevArrow);
            _.$nextArrow = $(_.options.nextArrow);

            if (_.htmlExpr.test(_.options.prevArrow)) {
                _.$prevArrow.appendTo(_.options.appendArrows);
            }

            if (_.htmlExpr.test(_.options.nextArrow)) {
                _.$nextArrow.appendTo(_.options.appendArrows);
            }

            if (_.options.infinite !== true) {
                _.$prevArrow.addClass('slick-disabled');
            }

        }

    };

    Slick.prototype.buildDots = function() {

        var _ = this,
            i, dotString;

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {

            dotString = '<ul class="' + _.options.dotsClass + '">';

            for (i = 0; i <= _.getDotCount(); i += 1) {
                dotString += '<li>' + _.options.customPaging.call(this, _, i) + '</li>';
            }

            dotString += '</ul>';

            _.$dots = $(dotString).appendTo(
                _.options.appendDots);

            _.$dots.find('li').first().addClass(
                'slick-active');

        }

    };

    Slick.prototype.buildOut = function() {

        var _ = this;

        _.$slides = _.$slider.children(_.options.slide +
            ':not(.slick-cloned)').addClass(
            'slick-slide');
        _.slideCount = _.$slides.length;

        _.$slides.each(function(index, element) {
            $(element).attr("index",index);
        });

        _.$slidesCache = _.$slides;

        _.$slider.addClass('slick-slider');

        _.$slideTrack = (_.slideCount === 0) ?
            $('<div class="slick-track"/>').appendTo(_.$slider) :
            _.$slides.wrapAll('<div class="slick-track"/>').parent();

        _.$list = _.$slideTrack.wrap(
            '<div class="slick-list"/>').parent();
        _.$slideTrack.css('opacity', 0);

        if (_.options.centerMode === true) {
            _.options.slidesToScroll = 1;
            if (_.options.slidesToShow % 2 === 0) {
                _.options.slidesToShow = 3;
            }
        }

        $('img[data-lazy]', _.$slider).not('[src]').addClass('slick-loading');

        _.setupInfinite();

        _.buildArrows();

        _.buildDots();

        _.updateDots();

        if (_.options.accessibility === true) {
            _.$list.prop('tabIndex', 0);
        }

        _.setSlideClasses(typeof this.currentSlide === 'number' ? this.currentSlide : 0);

        if (_.options.draggable === true) {
            _.$list.addClass('draggable');
        }

    };

    Slick.prototype.checkResponsive = function() {

        var _ = this,
            breakpoint, targetBreakpoint;

        if (_.originalSettings.responsive && _.originalSettings
            .responsive.length > -1 && _.originalSettings.responsive !== null) {

            targetBreakpoint = null;

            for (breakpoint in _.breakpoints) {
                if (_.breakpoints.hasOwnProperty(breakpoint)) {
                    if ($(window).width() < _.breakpoints[
                        breakpoint]) {
                        targetBreakpoint = _.breakpoints[
                            breakpoint];
                    }
                }
            }

            if (targetBreakpoint !== null) {
                if (_.activeBreakpoint !== null) {
                    if (targetBreakpoint !== _.activeBreakpoint) {
                        _.activeBreakpoint =
                            targetBreakpoint;
                        _.options = $.extend({}, _.options,
                            _.breakpointSettings[
                                targetBreakpoint]);
                        _.refresh();
                    }
                } else {
                    _.activeBreakpoint = targetBreakpoint;
                    _.options = $.extend({}, _.options,
                        _.breakpointSettings[
                            targetBreakpoint]);
                    _.refresh();
                }
            } else {
                if (_.activeBreakpoint !== null) {
                    _.activeBreakpoint = null;
                    _.options = $.extend({}, _.options,
                        _.originalSettings);
                    _.refresh();
                }
            }

        }

    };

    Slick.prototype.changeSlide = function(event) {

        var _ = this,
            $target = $(event.target),
            indexOffset, slideOffset, unevenOffset;

        // If target is a link, prevent default action.
        $target.is('a') && event.preventDefault();

        unevenOffset = (_.slideCount % _.options.slidesToScroll !== 0);
        indexOffset = unevenOffset ? 0 : (_.slideCount - _.currentSlide) % _.options.slidesToScroll;

        switch (event.data.message) {

            case 'previous':
                slideOffset = indexOffset === 0 ? _.options.slidesToScroll : _.options.slidesToShow - indexOffset;
                if (_.slideCount > _.options.slidesToShow) {
                    _.slideHandler(_.currentSlide  - slideOffset);
                }
                break;

            case 'next':
                slideOffset = indexOffset === 0 ? _.options.slidesToScroll : indexOffset;
                if (_.slideCount > _.options.slidesToShow) {
                    _.slideHandler(_.currentSlide + slideOffset);
                }
                break;

            case 'index':
                var index = event.data.index === 0 ? 0 :
                    event.data.index || $(event.target).parent().index() * _.options.slidesToScroll;
                _.slideHandler(index);

            default:
                return false;
        }

    };

    Slick.prototype.destroy = function() {

        var _ = this;

        _.autoPlayClear();

        _.touchObject = {};

        $('.slick-cloned', _.$slider).remove();
        if (_.$dots) {
            _.$dots.remove();
        }
        if (_.$prevArrow) {
            _.$prevArrow.remove();
            _.$nextArrow.remove();
        }
        if (_.$slides.parent().hasClass('slick-track')) {
            _.$slides.unwrap().unwrap();
        }
        _.$slides.removeClass(
            'slick-slide slick-active slick-visible').css('width', '');
        _.$slider.removeClass('slick-slider');
        _.$slider.removeClass('slick-initialized');

        _.$list.off('.slick');
        $(window).off('.slick-' + _.instanceUid);
        $(document).off('.slick-' + _.instanceUid);

    };

    Slick.prototype.disableTransition = function(slide) {

        var _ = this,
            transition = {};

        transition[_.transitionType] = "";

        if (_.options.fade === false) {
            _.$slideTrack.css(transition);
        } else {
            _.$slides.eq(slide).css(transition);
        }

    };

    Slick.prototype.fadeSlide = function(oldSlide, slideIndex, callback) {

        var _ = this;

        if (_.cssTransitions === false) {

            _.$slides.eq(slideIndex).css({
                zIndex: 1000
            });

            _.$slides.eq(slideIndex).animate({
                opacity: 1
            }, _.options.speed, _.options.easing, callback);

            _.$slides.eq(oldSlide).animate({
                opacity: 0
            }, _.options.speed, _.options.easing);

        } else {

            _.applyTransition(slideIndex);
            _.applyTransition(oldSlide);

            _.$slides.eq(slideIndex).css({
                opacity: 1,
                zIndex: 1000
            });

            _.$slides.eq(oldSlide).css({
                opacity: 0
            });

            if (callback) {
                setTimeout(function() {

                    _.disableTransition(slideIndex);
                    _.disableTransition(oldSlide);

                    callback.call();
                }, _.options.speed);
            }

        }

    };

    Slick.prototype.filterSlides = function(filter) {

        var _ = this;

        if (filter !== null) {

            _.unload();

            _.$slideTrack.children(this.options.slide).detach();

            _.$slidesCache.filter(filter).appendTo(_.$slideTrack);

            _.reinit();

        }

    };

    Slick.prototype.getCurrent = function() {

        var _ = this;

        return _.currentSlide;

    };

    Slick.prototype.getDotCount = function() {

        var _ = this,
            breaker = 0,
            dotCounter = 0,
            dotCount = 0,
            dotLimit;

        dotLimit = _.options.infinite === true ? _.slideCount + _.options.slidesToShow - _.options.slidesToScroll : _.slideCount;

        while (breaker < dotLimit) {
            dotCount++;
            dotCounter += _.options.slidesToScroll;
            breaker = dotCounter + _.options.slidesToShow;
        }

        return dotCount;

    };

    Slick.prototype.getLeft = function(slideIndex) {

        var _ = this,
            targetLeft,
            verticalHeight,
            verticalOffset = 0,
            slideWidth,
            targetSlide;

        _.slideOffset = 0;
        verticalHeight = _.$slides.first().outerHeight();

        if (_.options.infinite === true) {
            if (_.slideCount > _.options.slidesToShow) {
                _.slideOffset = (_.slideWidth * _.options.slidesToShow) * -1;
                verticalOffset = (verticalHeight * _.options.slidesToShow) * -1;
            }
            if (_.slideCount % _.options.slidesToScroll !== 0) {
                if (slideIndex + _.options.slidesToScroll > _.slideCount && _.slideCount > _.options.slidesToShow) {
                    _.slideOffset = ((_.slideCount % _.options.slidesToShow) * _.slideWidth) * -1;
                    verticalOffset = ((_.slideCount % _.options.slidesToShow) * verticalHeight) * -1;
                }
            }
        } else {
            if (_.slideCount % _.options.slidesToShow !== 0) {
                if (slideIndex + _.options.slidesToScroll > _.slideCount && _.slideCount > _.options.slidesToShow) {
                    _.slideOffset = (_.options.slidesToShow * _.slideWidth) - ((_.slideCount % _.options.slidesToShow) * _.slideWidth);
                    verticalOffset = ((_.slideCount % _.options.slidesToShow) * verticalHeight);
                }
            }
        }

        if (_.slideCount <= _.options.slidesToShow){
            _.slideOffset = 0;
            verticalOffset = 0;
        }

        if (_.options.centerMode === true && _.options.infinite === true) {
            _.slideOffset += _.slideWidth * Math.floor(_.options.slidesToShow / 2) - _.slideWidth;
        } else if (_.options.centerMode === true) {
            _.slideOffset += _.slideWidth * Math.floor(_.options.slidesToShow / 2);
        }

        if (_.options.vertical === false) {
            targetLeft = ((slideIndex * _.slideWidth) * -1) + _.slideOffset;
        } else {
            targetLeft = ((slideIndex * verticalHeight) * -1) + verticalOffset;
        }

        if (_.options.variableWidth === true) {

            if(_.slideCount <= _.options.slidesToShow || _.options.infinite === false) {
                targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex);
            } else {
                targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex + _.options.slidesToShow);
            }
            targetLeft = targetSlide[0] ? targetSlide[0].offsetLeft * -1 : 0;
            if (_.options.centerMode === true) {
                if(_.options.infinite === false) {
                    targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex);
                } else {
                    targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex + _.options.slidesToShow + 1);
                }
                targetLeft = targetSlide[0] ? targetSlide[0].offsetLeft * -1 : 0;
                targetLeft += (_.$list.width() - targetSlide.outerWidth()) / 2;
            }
        }

        return targetLeft;

    };

    Slick.prototype.init = function() {

        var _ = this;

        if (!$(_.$slider).hasClass('slick-initialized')) {

            $(_.$slider).addClass('slick-initialized');
            _.buildOut();
            _.setProps();
            _.startLoad();
            _.loadSlider();
            _.initializeEvents();
            _.checkResponsive();
        }

        if (_.options.onInit !== null) {
            _.options.onInit.call(this, _);
        }

    };

    Slick.prototype.initArrowEvents = function() {

        var _ = this;

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {
            _.$prevArrow.on('click.slick', {
                message: 'previous'
            }, _.changeSlide);
            _.$nextArrow.on('click.slick', {
                message: 'next'
            }, _.changeSlide);
        }

    };

    Slick.prototype.initDotEvents = function() {

        var _ = this;

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {
            $('li', _.$dots).on('click.slick', {
                message: 'index'
            }, _.changeSlide);
        }

        if (_.options.dots === true && _.options.pauseOnDotsHover === true && _.options.autoplay === true) {
            $('li', _.$dots)
                .on('mouseenter.slick', _.autoPlayClear)
                .on('mouseleave.slick', _.autoPlay);
        }

    };

    Slick.prototype.initializeEvents = function() {

        var _ = this;

        _.initArrowEvents();

        _.initDotEvents();

        _.$list.on('touchstart.slick mousedown.slick', {
            action: 'start'
        }, _.swipeHandler);
        _.$list.on('touchmove.slick mousemove.slick', {
            action: 'move'
        }, _.swipeHandler);
        _.$list.on('touchend.slick mouseup.slick', {
            action: 'end'
        }, _.swipeHandler);
        _.$list.on('touchcancel.slick mouseleave.slick', {
            action: 'end'
        }, _.swipeHandler);

        if (_.options.pauseOnHover === true && _.options.autoplay === true) {
            _.$list.on('mouseenter.slick', _.autoPlayClear);
            _.$list.on('mouseleave.slick', _.autoPlay);
        }

        if(_.options.accessibility === true) {
            _.$list.on('keydown.slick', _.keyHandler);
        }

        if(_.options.focusOnSelect === true) {
            $(_.options.slide, _.$slideTrack).on('click.slick', _.selectHandler);
        }

        $(window).on('orientationchange.slick.slick-' + _.instanceUid, function() {
            _.checkResponsive();
            _.setPosition();
        });

        $(window).on('resize.slick.slick-' + _.instanceUid, function() {
            if ($(window).width() !== _.windowWidth) {
                clearTimeout(_.windowDelay);
                _.windowDelay = window.setTimeout(function() {
                    _.windowWidth = $(window).width();
                    _.checkResponsive();
                    _.setPosition();
                }, 50);
            }
        });

        $(window).on('load.slick.slick-' + _.instanceUid, _.setPosition);
        $(document).on('ready.slick.slick-' + _.instanceUid, _.setPosition);

    };

    Slick.prototype.initUI = function() {

        var _ = this;

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {

            _.$prevArrow.show();
            _.$nextArrow.show();

        }

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {

            _.$dots.show();

        }

        if (_.options.autoplay === true) {

            _.autoPlay();

        }

    };

    Slick.prototype.keyHandler = function(event) {

        var _ = this;

        if (event.keyCode === 37) {
            _.changeSlide({
                data: {
                    message: 'previous'
                }
            });
        } else if (event.keyCode === 39) {
            _.changeSlide({
                data: {
                    message: 'next'
                }
            });
        }

    };

    Slick.prototype.lazyLoad = function() {

        var _ = this,
            loadRange, cloneRange, rangeStart, rangeEnd;

        function loadImages(imagesScope) {
            $('img[data-lazy]', imagesScope).each(function() {
                var image = $(this),
                    imageSource = $(this).attr('data-lazy');

                image
                  .load(function() { image.animate({ opacity: 1 }, 200); })
                  .css({ opacity: 0 })
                  .attr('src', imageSource)
                  .removeAttr('data-lazy')
                  .removeClass('slick-loading');
            });
        }

        if (_.options.centerMode === true) {
            if (_.options.infinite === true) {
                rangeStart = _.currentSlide + (_.options.slidesToShow/2 + 1);
                rangeEnd = rangeStart + _.options.slidesToShow + 2;
            } else {
                rangeStart = Math.max(0, _.currentSlide - (_.options.slidesToShow/2 + 1));
                rangeEnd = 2 + (_.options.slidesToShow/2 + 1) + _.currentSlide;
            }
        } else {
            rangeStart = _.options.infinite ? _.options.slidesToShow + _.currentSlide : _.currentSlide;
            rangeEnd = rangeStart + _.options.slidesToShow;
            if (_.options.fade === true ) {
                if(rangeStart > 0) rangeStart--;
                if(rangeEnd <= _.slideCount) rangeEnd++;
            }
        }

        loadRange = _.$slider.find('.slick-slide').slice(rangeStart, rangeEnd);
        loadImages(loadRange);

          if (_.slideCount <= _.options.slidesToShow){
              cloneRange = _.$slider.find('.slick-slide')
              loadImages(cloneRange)
          }else
        if (_.currentSlide >= _.slideCount - _.options.slidesToShow) {
            cloneRange = _.$slider.find('.slick-cloned').slice(0, _.options.slidesToShow);
            loadImages(cloneRange)
        } else if (_.currentSlide === 0) {
            cloneRange = _.$slider.find('.slick-cloned').slice(_.options.slidesToShow * -1);
            loadImages(cloneRange);
        }

    };

    Slick.prototype.loadSlider = function() {

        var _ = this;

        _.setPosition();

        _.$slideTrack.css({
            opacity: 1
        });

        _.$slider.removeClass('slick-loading');

        _.initUI();

        if (_.options.lazyLoad === 'progressive') {
            _.progressiveLazyLoad();
        }

    };

    Slick.prototype.postSlide = function(index) {

        var _ = this;

        if (_.options.onAfterChange !== null) {
            _.options.onAfterChange.call(this, _, index);
        }

        _.animating = false;

        _.setPosition();

        _.swipeLeft = null;

        if (_.options.autoplay === true && _.paused === false) {
            _.autoPlay();
        }

    };

    Slick.prototype.progressiveLazyLoad = function() {

        var _ = this,
            imgCount, targetImage;

        imgCount = $('img[data-lazy]').length;

        if (imgCount > 0) {
            targetImage = $('img[data-lazy]', _.$slider).first();
            targetImage.attr('src', targetImage.attr('data-lazy')).removeClass('slick-loading').load(function() {
                targetImage.removeAttr('data-lazy');
                _.progressiveLazyLoad();
            })
         .error(function () {
          targetImage.removeAttr('data-lazy');
          _.progressiveLazyLoad();
         });
        }

    };

    Slick.prototype.refresh = function() {

        var _ = this,
            currentSlide = _.currentSlide;

        _.destroy();

        $.extend(_, _.initials);

        _.currentSlide = currentSlide;
        _.init();

    };

    Slick.prototype.reinit = function() {

        var _ = this;

        _.$slides = _.$slideTrack.children(_.options.slide).addClass(
            'slick-slide');

        _.slideCount = _.$slides.length;

        if (_.currentSlide >= _.slideCount && _.currentSlide !== 0) {
            _.currentSlide = _.currentSlide - _.options.slidesToScroll;
        }

        if (_.slideCount <= _.options.slidesToShow) {
            _.currentSlide = 0;
        }

        _.setProps();

        _.setupInfinite();

        _.buildArrows();

        _.updateArrows();

        _.initArrowEvents();

        _.buildDots();

        _.updateDots();

        _.initDotEvents();

        if(_.options.focusOnSelect === true) {
            $(_.options.slide, _.$slideTrack).on('click.slick', _.selectHandler);
        }

        _.setSlideClasses(0);

        _.setPosition();

        if (_.options.onReInit !== null) {
            _.options.onReInit.call(this, _);
        }

    };

    Slick.prototype.removeSlide = function(index, removeBefore) {

        var _ = this;

        if (typeof(index) === 'boolean') {
            removeBefore = index;
            index = removeBefore === true ? 0 : _.slideCount - 1;
        } else {
            index = removeBefore === true ? --index : index;
        }

        if (_.slideCount < 1 || index < 0 || index > _.slideCount - 1) {
            return false;
        }

        _.unload();

        _.$slideTrack.children(this.options.slide).eq(index).remove();

        _.$slides = _.$slideTrack.children(this.options.slide);

        _.$slideTrack.children(this.options.slide).detach();

        _.$slideTrack.append(_.$slides);

        _.$slidesCache = _.$slides;

        _.reinit();

    };

    Slick.prototype.setCSS = function(position) {

        var _ = this,
            positionProps = {}, x, y;

        if (_.options.rtl === true) {
            position = -position;
        }
        x = _.positionProp == 'left' ? position + 'px' : '0px';
        y = _.positionProp == 'top' ? position + 'px' : '0px';

        positionProps[_.positionProp] = position;

        if (_.transformsEnabled === false) {
            _.$slideTrack.css(positionProps);
        } else {
            positionProps = {};
            if (_.cssTransitions === false) {
                positionProps[_.animType] = 'translate(' + x + ', ' + y + ')';
                _.$slideTrack.css(positionProps);
            } else {
                positionProps[_.animType] = 'translate3d(' + x + ', ' + y + ', 0px)';
                _.$slideTrack.css(positionProps);
            }
        }

    };

    Slick.prototype.setDimensions = function() {

        var _ = this;

        if (_.options.vertical === false) {
            if (_.options.centerMode === true) {
                _.$list.css({
                    padding: ('0px ' + _.options.centerPadding)
                });
            }
        } else {
            _.$list.height(_.$slides.first().outerHeight(true) * _.options.slidesToShow);
            if (_.options.centerMode === true) {
                _.$list.css({
                    padding: (_.options.centerPadding + ' 0px')
                });
            }
        }

        _.listWidth = _.$list.width();
        _.listHeight = _.$list.height();


        if(_.options.vertical === false && _.options.variableWidth === false) {
            _.slideWidth = Math.ceil(_.listWidth / _.options.slidesToShow);
            _.$slideTrack.width(Math.ceil((_.slideWidth * _.$slideTrack.children('.slick-slide').length)));

        } else if (_.options.variableWidth === true) {
            _.slideWidth = 0;
            _.$slideTrack.children('.slick-slide').each(function(){
                _.slideWidth += Math.ceil($(this).outerWidth(true));
            });
            _.$slideTrack.width(Math.ceil(_.slideWidth) + 1);
        } else {
            _.slideWidth = Math.ceil(_.listWidth);
            _.$slideTrack.height(Math.ceil((_.$slides.first().outerHeight(true) * _.$slideTrack.children('.slick-slide').length)));
        }

        var offset = _.$slides.first().outerWidth(true) - _.$slides.first().width();
        if (_.options.variableWidth === false) _.$slideTrack.children('.slick-slide').width(_.slideWidth - offset);

    };

    Slick.prototype.setFade = function() {

        var _ = this,
            targetLeft;

        _.$slides.each(function(index, element) {
            targetLeft = (_.slideWidth * index) * -1;
            $(element).css({
                position: 'relative',
                left: targetLeft,
                top: 0,
                zIndex: 800,
                opacity: 0
            });
        });

        _.$slides.eq(_.currentSlide).css({
            zIndex: 900,
            opacity: 1
        });

    };

    Slick.prototype.setHeight = function() {

        var _ = this;

        if(_.options.slidesToShow === 1 && _.options.adaptiveHeight === true && _.options.vertical === false) {
            var targetHeight = _.$slides.eq(_.currentSlide).outerHeight(true);
            _.$list.css('height', targetHeight);
        }

    };

    Slick.prototype.setPosition = function() {

        var _ = this;

        _.setDimensions();

        _.setHeight();

        if (_.options.fade === false) {
            _.setCSS(_.getLeft(_.currentSlide));
        } else {
            _.setFade();
        }

    };

    Slick.prototype.setProps = function() {

        var _ = this,
            bodyStyle = document.body.style;

        _.positionProp = _.options.vertical === true ? 'top' : 'left';

        if (_.positionProp === 'top') {
            _.$slider.addClass('slick-vertical');
        } else {
            _.$slider.removeClass('slick-vertical');
        }

        if (bodyStyle.WebkitTransition !== undefined ||
            bodyStyle.MozTransition !== undefined ||
            bodyStyle.msTransition !== undefined) {
            if(_.options.useCSS === true) {
                _.cssTransitions = true;
            }
        }

        if (bodyStyle.OTransform !== undefined) {
            _.animType = 'OTransform';
            _.transformType = "-o-transform";
            _.transitionType = 'OTransition';
            if (bodyStyle.perspectiveProperty === undefined && bodyStyle.webkitPerspective === undefined) _.animType = false;
        }
        if (bodyStyle.MozTransform !== undefined) {
            _.animType = 'MozTransform';
            _.transformType = "-moz-transform";
            _.transitionType = 'MozTransition';
            if (bodyStyle.perspectiveProperty === undefined && bodyStyle.MozPerspective === undefined) _.animType = false;
        }
        if (bodyStyle.webkitTransform !== undefined) {
            _.animType = 'webkitTransform';
            _.transformType = "-webkit-transform";
            _.transitionType = 'webkitTransition';
            if (bodyStyle.perspectiveProperty === undefined && bodyStyle.webkitPerspective === undefined) _.animType = false;
        }
        if (bodyStyle.msTransform !== undefined) {
            _.animType = 'msTransform';
            _.transformType = "-ms-transform";
            _.transitionType = 'msTransition';
            if (bodyStyle.msTransform === undefined) _.animType = false;
        }
        if (bodyStyle.transform !== undefined && _.animType !== false) {
            _.animType = 'transform';
            _.transformType = "transform";
            _.transitionType = 'transition';
        }
        _.transformsEnabled = (_.animType !== null && _.animType !== false);

    };


    Slick.prototype.setSlideClasses = function(index) {

        var _ = this,
            centerOffset, allSlides, indexOffset, remainder;

        _.$slider.find('.slick-slide').removeClass('slick-active').removeClass('slick-center');
        allSlides = _.$slider.find('.slick-slide');

        if (_.options.centerMode === true) {

            centerOffset = Math.floor(_.options.slidesToShow / 2);

            if(_.options.infinite === true) {

                if (index >= centerOffset && index <= (_.slideCount - 1) - centerOffset) {
                    _.$slides.slice(index - centerOffset, index + centerOffset + 1).addClass('slick-active');
                } else {
                    indexOffset = _.options.slidesToShow + index;
                    allSlides.slice(indexOffset - centerOffset + 1, indexOffset + centerOffset + 2).addClass('slick-active');
                }

                if (index === 0) {
                    allSlides.eq(allSlides.length - 1 - _.options.slidesToShow).addClass('slick-center');
                } else if (index === _.slideCount - 1) {
                    allSlides.eq(_.options.slidesToShow).addClass('slick-center');
                }

            }

            _.$slides.eq(index).addClass('slick-center');

        } else {

            if (index >= 0 && index <= (_.slideCount - _.options.slidesToShow)) {
                _.$slides.slice(index, index + _.options.slidesToShow).addClass('slick-active');
            } else if ( allSlides.length <= _.options.slidesToShow ) {
                allSlides.addClass('slick-active');
            } else {
                remainder = _.slideCount%_.options.slidesToShow;
                indexOffset = _.options.infinite === true ? _.options.slidesToShow + index : index;
                if(_.options.slidesToShow == _.options.slidesToScroll && (_.slideCount - index) < _.options.slidesToShow) {
                    allSlides.slice(indexOffset-(_.options.slidesToShow-remainder), indexOffset + remainder).addClass('slick-active');
                } else {
                    allSlides.slice(indexOffset, indexOffset + _.options.slidesToShow).addClass('slick-active');
                }
            }

        }

        if (_.options.lazyLoad === 'ondemand') {
            _.lazyLoad();
        }

    };

    Slick.prototype.setupInfinite = function() {

        var _ = this,
            i, slideIndex, infiniteCount;

        if (_.options.fade === true || _.options.vertical === true) {
            _.options.centerMode = false;
        }

        if (_.options.infinite === true && _.options.fade === false) {

            slideIndex = null;

            if (_.slideCount > _.options.slidesToShow) {

                if (_.options.centerMode === true) {
                    infiniteCount = _.options.slidesToShow + 1;
                } else {
                    infiniteCount = _.options.slidesToShow;
                }

                for (i = _.slideCount; i > (_.slideCount -
                    infiniteCount); i -= 1) {
                    slideIndex = i - 1;
                    $(_.$slides[slideIndex]).clone(true).attr('id', '')
                        .attr('index', slideIndex-_.slideCount)
                        .prependTo(_.$slideTrack).addClass('slick-cloned').attr("data-clone",""+(slideIndex+1)+"");
                }
                for (i = 0; i < infiniteCount; i += 1) {
                    slideIndex = i;
                    $(_.$slides[slideIndex]).clone(true).attr('id', '')
                        .attr('index', slideIndex+_.slideCount)
                        .appendTo(_.$slideTrack).addClass('slick-cloned').attr("data-clone",""+(slideIndex+1)+"");
                }
                _.$slideTrack.find('.slick-cloned').find('[id]').each(function() {
                    $(this).attr('id', '');
                });

            }

        }

    };

    Slick.prototype.selectHandler = function(event) {

        var _ = this;
        var index = parseInt($(event.target).parents('.slick-slide').attr("index"));
        if(!index) index = 0;

        if(_.slideCount <= _.options.slidesToShow){
            return;
        }
        _.slideHandler(index);

    };

    Slick.prototype.slideHandler = function(index,sync) {

        var targetSlide, animSlide, oldSlide, slideLeft, unevenOffset, targetLeft = null,
            _ = this;

        sync = sync || false;

        if (_.animating === true && _.options.waitForAnimate === true) {
            return false;
        }

        if (sync === false) {
            _.asNavFor(index);
        }

        targetSlide = index;
        targetLeft = _.getLeft(targetSlide);
        slideLeft = _.getLeft(_.currentSlide);

        unevenOffset = _.slideCount % _.options.slidesToScroll !== 0 ? _.options.slidesToScroll : 0;

        _.currentLeft = _.swipeLeft === null ? slideLeft : _.swipeLeft;

        if (_.options.infinite === false && _.options.centerMode === false && (index < 0 || index > (_.slideCount - _.options.slidesToShow + unevenOffset))) {
            if(_.options.fade === false) {
                targetSlide = _.currentSlide;
                _.animateSlide(slideLeft, function() {
                    _.postSlide(targetSlide);
                });
            }
            return false;
        } else if (_.options.infinite === false && _.options.centerMode === true && (index < 0 || index > (_.slideCount - _.options.slidesToScroll))) {
            if(_.options.fade === false) {
                targetSlide = _.currentSlide;
                _.animateSlide(slideLeft, function() {
                    _.postSlide(targetSlide);
                });
            }
            return false;
        }

        if (_.options.autoplay === true) {
            clearInterval(_.autoPlayTimer);
        }

        if (targetSlide < 0) {
            if (_.slideCount % _.options.slidesToScroll !== 0) {
                animSlide = _.slideCount - (_.slideCount % _.options.slidesToScroll);
            } else {
                animSlide = _.slideCount + targetSlide;
            }
        } else if (targetSlide >= _.slideCount) {
            if (_.slideCount % _.options.slidesToScroll !== 0) {
                animSlide = 0;
            } else {
                animSlide = targetSlide - _.slideCount;
            }
        } else {
            animSlide = targetSlide;
        }

        _.animating = true;

        if (_.options.onBeforeChange !== null && index !== _.currentSlide) {
            _.options.onBeforeChange.call(this, _, _.currentSlide, animSlide);
        }

        oldSlide = _.currentSlide;
        _.currentSlide = animSlide;

        _.setSlideClasses(_.currentSlide);

        _.updateDots();
        _.updateArrows();

        if (_.options.fade === true) {
            _.fadeSlide(oldSlide,animSlide, function() {
                _.postSlide(animSlide);
            });
            return false;
        }

        _.animateSlide(targetLeft, function() {
            _.postSlide(animSlide);
        });

    };

    Slick.prototype.startLoad = function() {

        var _ = this;

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {

            _.$prevArrow.hide();
            _.$nextArrow.hide();

        }

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {

            _.$dots.hide();

        }

        _.$slider.addClass('slick-loading');

    };

    Slick.prototype.swipeDirection = function() {

        var xDist, yDist, r, swipeAngle, _ = this;

        xDist = _.touchObject.startX - _.touchObject.curX;
        yDist = _.touchObject.startY - _.touchObject.curY;
        r = Math.atan2(yDist, xDist);

        swipeAngle = Math.round(r * 180 / Math.PI);
        if (swipeAngle < 0) {
            swipeAngle = 360 - Math.abs(swipeAngle);
        }

        if ((swipeAngle <= 45) && (swipeAngle >= 0)) {
            return 'left';
        }
        if ((swipeAngle <= 360) && (swipeAngle >= 315)) {
            return 'left';
        }
        if ((swipeAngle >= 135) && (swipeAngle <= 225)) {
            return 'right';
        }

        return 'vertical';

    };

    Slick.prototype.swipeEnd = function(event) {

        var _ = this, slideCount, slidesTraversed, swipeDiff;

        _.dragging = false;

        if (_.touchObject.curX === undefined) {
            return false;
        }

        if (_.touchObject.swipeLength >= _.touchObject.minSwipe) {
            $(event.target).on('click.slick', function(event) {
                event.stopImmediatePropagation();
                event.stopPropagation();
                event.preventDefault();
                $(event.target).off('click.slick');
            });

            if(_.options.swipeToSlide === true) {
                slidesTraversed = Math.round(_.touchObject.swipeLength / _.slideWidth);
                slideCount = slidesTraversed
            } else {
                slideCount = _.options.slidesToScroll;
            }

            switch (_.swipeDirection()) {
                case 'left':
                    _.slideHandler(_.currentSlide + slideCount);
                    _.touchObject = {};
                    break;

                case 'right':
                    _.slideHandler(_.currentSlide - slideCount);
                    _.touchObject = {};
                    break;
            }
        } else {
            if(_.touchObject.startX !== _.touchObject.curX) {
                _.slideHandler(_.currentSlide);
                _.touchObject = {};
            }
        }

    };

    Slick.prototype.swipeHandler = function(event) {

        var _ = this;

        if ((_.options.swipe === false) || ('ontouchend' in document && _.options.swipe === false)) {
           return;
        } else if (_.options.draggable === false && event.type.indexOf('mouse') !== -1) {
           return;
        }

        _.touchObject.fingerCount = event.originalEvent && event.originalEvent.touches !== undefined ?
            event.originalEvent.touches.length : 1;

        _.touchObject.minSwipe = _.listWidth / _.options
            .touchThreshold;

        switch (event.data.action) {

            case 'start':
                _.swipeStart(event);
                break;

            case 'move':
                _.swipeMove(event);
                break;

            case 'end':
                _.swipeEnd(event);
                break;

        }

    };

    Slick.prototype.swipeMove = function(event) {

        var _ = this,
            curLeft, swipeDirection, positionOffset, touches;

        touches = event.originalEvent !== undefined ? event.originalEvent.touches : null;

        curLeft = _.getLeft(_.currentSlide);

        if (!_.dragging || touches && touches.length !== 1) {
            return false;
        }

        _.touchObject.curX = touches !== undefined ? touches[0].pageX : event.clientX;
        _.touchObject.curY = touches !== undefined ? touches[0].pageY : event.clientY;

        _.touchObject.swipeLength = Math.round(Math.sqrt(
            Math.pow(_.touchObject.curX - _.touchObject.startX, 2)));

        swipeDirection = _.swipeDirection();

        if (swipeDirection === 'vertical') {
            return;
        }

        if (event.originalEvent !== undefined && _.touchObject.swipeLength > 4) {
            event.preventDefault();
        }

        positionOffset = _.touchObject.curX > _.touchObject.startX ? 1 : -1;

        if (_.options.vertical === false) {
            _.swipeLeft = curLeft + _.touchObject.swipeLength * positionOffset;
        } else {
            _.swipeLeft = curLeft + (_.touchObject
                .swipeLength * (_.$list.height() / _.listWidth)) * positionOffset;
        }

        if (_.options.fade === true || _.options.touchMove === false) {
            return false;
        }

        if (_.animating === true) {
            _.swipeLeft = null;
            return false;
        }

        _.setCSS(_.swipeLeft);

    };

    Slick.prototype.swipeStart = function(event) {

        var _ = this,
            touches;

        if (_.touchObject.fingerCount !== 1 || _.slideCount <= _.options.slidesToShow) {
            _.touchObject = {};
            return false;
        }

        if (event.originalEvent !== undefined && event.originalEvent.touches !== undefined) {
            touches = event.originalEvent.touches[0];
        }

        _.touchObject.startX = _.touchObject.curX = touches !== undefined ? touches.pageX : event.clientX;
        _.touchObject.startY = _.touchObject.curY = touches !== undefined ? touches.pageY : event.clientY;

        _.dragging = true;

    };

    Slick.prototype.unfilterSlides = function() {

        var _ = this;

        if (_.$slidesCache !== null) {

            _.unload();

            _.$slideTrack.children(this.options.slide).detach();

            _.$slidesCache.appendTo(_.$slideTrack);

            _.reinit();

        }

    };

    Slick.prototype.unload = function() {

        var _ = this;

        $('.slick-cloned', _.$slider).remove();
        if (_.$dots) {
            _.$dots.remove();
        }
        if (_.$prevArrow) {
            _.$prevArrow.remove();
            _.$nextArrow.remove();
        }
        _.$slides.removeClass(
            'slick-slide slick-active slick-visible').css('width', '');

    };

    Slick.prototype.updateArrows = function() {

        var _ = this;

        if (_.options.arrows === true && _.options.infinite !==
            true && _.slideCount > _.options.slidesToShow) {
            _.$prevArrow.removeClass('slick-disabled');
            _.$nextArrow.removeClass('slick-disabled');
            if (_.currentSlide === 0) {
                _.$prevArrow.addClass('slick-disabled');
                _.$nextArrow.removeClass('slick-disabled');
            } else if (_.currentSlide >= _.slideCount - _.options.slidesToShow) {
                _.$nextArrow.addClass('slick-disabled');
                _.$prevArrow.removeClass('slick-disabled');
            }
        }

    };

    Slick.prototype.updateDots = function() {

        var _ = this;

        if (_.$dots !== null) {

            _.$dots.find('li').removeClass('slick-active');
            _.$dots.find('li').eq(Math.floor(_.currentSlide / _.options.slidesToScroll)).addClass('slick-active');

        }

    };

    $.fn.slick = function(options) {
        var _ = this;
        return _.each(function(index, element) {

            element.slick = new Slick(element, options);

        });
    };

    $.fn.slickAdd = function(slide, slideIndex, addBefore) {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.addSlide(slide, slideIndex, addBefore);

        });
    };

    $.fn.slickCurrentSlide = function() {
        var _ = this;
        return _.get(0).slick.getCurrent();
    };

    $.fn.slickFilter = function(filter) {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.filterSlides(filter);

        });
    };

    $.fn.slickGoTo = function(slide) {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.changeSlide({
                data: {
                    message: 'index',
                    index: parseInt(slide)
                }
            });

        });
    };

    $.fn.slickNext = function() {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.changeSlide({
                data: {
                    message: 'next'
                }
            });

        });
    };

    $.fn.slickPause = function() {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.autoPlayClear();
            element.slick.paused = true;

        });
    };

    $.fn.slickPlay = function() {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.paused = false;
            element.slick.autoPlay();

        });
    };

    $.fn.slickPrev = function() {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.changeSlide({
                data: {
                    message: 'previous'
                }
            });

        });
    };

    $.fn.slickRemove = function(slideIndex, removeBefore) {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.removeSlide(slideIndex, removeBefore);

        });
    };

    $.fn.slickGetOption = function(option) {
        var _ = this;
        return _.get(0).slick.options[option];
    };

    $.fn.slickSetOption = function(option, value, refresh) {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.options[option] = value;

            if (refresh === true) {
                element.slick.unload();
                element.slick.reinit();
            }

        });
    };

    $.fn.slickUnfilter = function() {
        var _ = this;
        return _.each(function(index, element) {

            element.slick.unfilterSlides();

        });
    };

    $.fn.unslick = function() {
        var _ = this;
        return _.each(function(index, element) {

          if (element.slick) {
            element.slick.destroy();
          }

        });
    };

    $.fn.getSlick = function() {
        var s = null;
        var _ = this;
        _.each(function(index, element) {
            s = element.slick;
        });

        return s;
    };

}));

		
	
	</script>

	
	<script type="text/javascript" id="callplugin">
	$(function() {

    var svgH=$('#diamond').height(),svgW=$('#diamond').width(), svg = Snap("#diamond"),slideClone,svgtextVariables,slideNo=1,imgSrc,imgArray=["image1","image2"],imgCloneArray=["image1","image2"];
			
      dX=svgW/4*2;
      dY=svgH/4;

      $optionsform = $("#variables");
      $setdelay = "";
      $calledplugin = "";
      $demoarticle = $("#democontainer");
      $democontainer = $(".responsive");
    
      $availablevariables = {
        slidesToScroll:1,
        slidesToShow:1,
        lazyload: 'ondemand',
        //cssEase: 'cubic-bezier(.23,.85,.94,.23)',
        //cssEase: 'cubic-bezier(.23,.85,.94,.23)',
        cssEase:'linear',
        speed: 500,
        autoplaySpeed:2000,
        autoplay: false,
        infinite: true,
        fade:false,
        dots: true
       // centerMode: false 
      }

      diamond = svg.path("M "+dX+" "+dY+" L "+(dX-100)+" 342 L "+dX+" 230 L "+(dX+100)+" 342 Z").attr({fill: "#fff"})

      

      function handleFileSelect(evt) {

        
      
         evt.stopPropagation();
         evt.preventDefault();

         var files = evt.dataTransfer.files; // FileList object.

         var slideid = evt.target.parentNode.getAttribute("data-slide");

         var $slideclones = $('.slick-cloned');
         

         var zone = document.getElementById('slide'+slideid+'');
         var cloneNo = ($availablevariables["slidesToShow"]*2);
         var slideSrcNo=slideNo-1;
         

         

         // Loop through the FileList and render image files as thumbnails.
          for (var i = 0, f; f = files[i]; i++) {

            // Only process image files.
            if (!f.type.match('image.*')) {
              continue;
            }

            var reader = new FileReader();

            // Closure to capture the file information.
            reader.onload = (function(theFile) {
              return function(e) {
                // Render thumbnail.
                //var span = document.createElement('span');
                //console.log(e.target.result)
                zone.src = ''+e.target.result+'';

                if ($slideclones.length>0){
                  var $zoneClone = $('.slick-cloned[data-clone="'+slideid+'"]');
                  $zoneClone.find("img").attr("src",""+e.target.result+"");

                  //$slideclones.each(function(){ });


                }
                //$('.slick-track').find(".slick-cloned:eq(0)").find("img").attr("id","I tell you")


                //span.innerHTML = ['<img class="thumb" src="', e.target.result,
                                  //'" title="', escape(theFile.name), '"/>'].join('');
                //document.getElementById('list').insertBefore(span, null);
              };
            })(f);

            // Read in the image file as a data URL.
            reader.readAsDataURL(f);

          }

        // // files is a FileList of File objects. List some properties.
        // var output = [];
        // for (var i = 0, f; f = files[i]; i++) {
        //   output.push('<li><strong>', escape(f.name), '</strong> (', f.type || 'n/a', ') - ',
        //               f.size, ' bytes, last modified: ',
        //               f.lastModifiedDate ? f.lastModifiedDate.toLocaleDateString() : 'n/a',
        //               '</li>');
        // }
        // document.getElementById('list').innerHTML = '<ul>' + output.join('') + '</ul>';
      }

      function handleDragOver(evt) {
        evt.stopPropagation();
        evt.preventDefault();
        evt.dataTransfer.dropEffect = 'copy'; // Explicitly show this is a copy.
      }

      var dropZone = document.getElementById('slick-track');
      dropZone.addEventListener('dragover', handleDragOver, false);
      dropZone.addEventListener('drop', handleFileSelect, false); 

			
      //Create Slick object with available variables for SVG overlay
      svgtextVariables = JSON.stringify($availablevariables);
      svgtextVariables=svgtextVariables.replace(/\"/g, "");
      svgtextVariables=svgtextVariables.replace(/\{/g, "");
      svgtextVariables=svgtextVariables.replace(/\}/g, "");
      svgtextVariables=svgtextVariables.replace(",", "\n\r");

      if(localStorage.slickVariables){$availablevariables = JSON.parse(localStorage.slickVariables)};



			$('a#download').on('click',function(e){

				var eUrl=$(this).prop('href').split('below:');
				eUrl=eUrl[0];
				eUrl=eUrl+"below:%0D%0A%0D%0Avar sccObj={"+JSON.stringify($availablevariables)+"}%0D%0A%0D%0A$(element).slick(sccObj);";
				eUrl=eUrl.replace(/\"/g, "");
				eUrl=eUrl.replace(/\{\{/g, "{");
				eUrl=eUrl.replace(/\}\}/g, "}");
				eUrl=eUrl.replace(/,/g, ",%0D%0A");
				$(this).attr('href',''+eUrl+'');


			})





      

			$('a#save').on('click',function(e){

				if(typeof(Storage) !== "undefined") {
			    	localStorage.slickVariables = JSON.stringify($availablevariables);
            callplugin.saveVars();
			    	alert("'Slick' Variables Saved!");
				} else {
				    alert("Sorry! No Web Storage support")
				}

				e.preventDefault();

			});

      $('a#reset').on('click',function(e){

        if(typeof(Storage) !== "undefined") {
            localStorage.slickVariables = "";
            localStorage.slickImagesClones = "";
            localStorage.slickImages = "";
            alert("'Slick' Variables Reset!");
        } else {
            alert("Sorry! No Web Storage support")
        }

        e.preventDefault();

      });




	
      $('#grab').on('click',function(){
		
        
			$('.wrapper,.main-panel,#footer-contact').toggleClass('active');
			$('.main-panel').attr("id","main-panel-active");
		

       //v'ar svgBtns = "";//<button type=\"button\" id=\"copyto\">Copy to clipboard</button>\n"+
                      //"<a href=\"#\" id=\"close\" class=\"active\">CLOSE</a>";
    
        

              //   $('#sidebar,#main,#diamond,.svg-wrapper').toggleClass('active');
              //   $('.main-panel').toggleClass('svg-active');
              //   $('#diamond').css({"visibility":"visible"}).animate({
              //     opacity: 1
              //   }, 500, function() {
                  
              //       diamond.animate({path: "M 60 60, "+svgW+" 60, "+svgW+" "+svgH+", 60 "+svgH+" Z"}, 500);

              //       $('.svg-wrapper').append(svgBtns).find("#close").delay(500).fadeIn(500,function() {$('#close').delay(2000).toggleClass("active");

              //       svg.text(0, 0, "Slick plugin variables").attr({transform:"matrix(1 0 0 1 150.0001 150.8398)",style:"font: 300 70px Source Sans Pro, source-sans-pro, sans-serif"});
              //       svg.text(0, 0, "Please copy and send the plugin variables below:").attr({transform:"matrix(1 0 0 1 150.0001 250.8398)",style:"font: 300 40px Source Sans Pro, source-sans-pro, sans-serif"});


              //       var svgvar = JSON.stringify($availablevariables).split(","),objVar,y=300;
                    
              //       for (var i = 0; i < svgvar.length; i++) {
              //         objVar= (i>0) ? "" : "var sccObj=";
              //        // var tspan = svg.selectAll("text");//.text(svg[i]);
                      
              //         if (i==(svgvar.length-1)){
              //           svg.text(0, 0, ""+objVar+svgvar[i]).attr({transform:"matrix(1 0 0 1 150.0001 "+y+".8398)",style:"font: 300 20px Source Sans Pro, source-sans-pro, sans-serif"});
              //           svg.text(0, 0, "$(element).slick(sccObj);").attr({transform:"matrix(1 0 0 1 150.0001 "+(y+40)+".8398)",style:"font: 300 20px Source Sans Pro, source-sans-pro, sans-serif"});
              //         }else{
              //           svg.text(0, 0, ""+objVar+svgvar[i]+",").attr({transform:"matrix(1 0 0 1 150.0001 "+y+".8398)",style:"font: 300 20px Source Sans Pro, source-sans-pro, sans-serif"});
              //         }
                      

              //         y+=30;

              //       }


              //     });
                    
              // });
        var sccVars = JSON.stringify($availablevariables).split(","),objVar="",linebreak;
        
        for (var i = 0; i < sccVars.length; i++) {
           
            linebreak = (i<(sccVars.length-1)) ? ",\r\n" : "\r\n";
            objVar += sccVars[i]+linebreak;
        }
        
        var grabTemplate="<h1>Slick plugin variables</h1>"+
                          "<p><strong>Please copy and send the plugin variables below</strong>:<br />"+
                          "var sccObj="+objVar+"<br />"+
                          "$(element).slick(sccObj);</p>";

        $('#footer-contact #text-variables').empty().append(grabTemplate);
        setTimeout(function(){$('#footer-contact #close').toggleClass("active")}, 1000);

      })  

      $('#footer-contact a#close').on('click',function(){

        $('.wrapper,.main-panel,#footer-contact,#footer-contact #close').toggleClass('active');

      })


			var callplugin = {
				init:function(){
					
					if(typeof(Storage) !== "undefined") {
			    		if(localStorage.slickVariables){$democontainer.slick(JSON.parse(localStorage.slickVariables))}else{$democontainer.slick($availablevariables)};
              
              if(localStorage.slickImages){

                var storageImgArray=JSON.parse("[" + localStorage.slickImages + "]");
                var storageImgArrayClones = JSON.parse("[" + localStorage.slickImagesClones + "]");
               
                //Update non-clone img src's
                $('.slick-slide:not(.slick-cloned)').each(function(i){    
                   $(this).find('img').attr("src",""+storageImgArray[0][i]+"");
                })
                
                
                //Update clone img src's
                $('.slick-cloned').each(function(i){
                    $(this).find('img').attr("src",""+storageImgArrayClones[0][i]+"");
                })

              }else{
                 //fill Image array on load
                  $('.slick-track').find('.slick-slide:not(.slick-cloned)').each(function(i){
                            imgSrc = $(this).find('img').prop("src");
                            imgArray[i] = imgSrc;       
                  })
                  
                  $('.slick-track').find('.slick-cloned').each(function(i){
                            imgSrc = $(this).find('img').prop("src");
                            imgCloneArray[i] = imgSrc;    
                  })

              }

					} else {
					  
					}
					
				},
        saveVars:function(){
          imgArray.length=0;
          imgCloneArray.length=0;

            $('.slick-slide:not(.slick-cloned)').each(function(i){    
                imgSrc = $(this).find('img').prop("src");
                imgArray[i] = imgSrc;
            })
            
            $('.slick-cloned').each(function(i){
                imgSrc = $(this).find('img').prop("src");
                imgCloneArray[i] = imgSrc;
            })


          if(typeof(Storage) !== "undefined") {
            localStorage.slickImages = JSON.stringify(imgArray);
            localStorage.slickImagesClones = JSON.stringify(imgCloneArray);
          } else {
              alert("Sorry! No Web Storage support");
          }

        },
		change:function(){
          var slideSrcNo=slideNo-1;
          imgArray.length=0;
          imgCloneArray.length=0;

            $('.slick-slide:not(.slick-cloned)').each(function(i){    
                imgSrc = $(this).find('img').prop("src");
                imgArray[i] = imgSrc;
            })
            
            $('.slick-cloned').each(function(i){
                imgSrc = $(this).find('img').prop("src");
                imgCloneArray[i] = imgSrc;
            })

            

                    

			$demoarticle.load("index.asp" + " #plugin", function(){
			$demoarticle = $("#democontainer");
			$democontainer = $(".responsive");
			$democontainer.slick($availablevariables);
              dropZone = document.getElementById('slick-track');

              dropZone.addEventListener('dragover', handleDragOver, false);
              dropZone.addEventListener('drop', handleFileSelect, false);
              


              //Update non-clone img src's
              $('.slick-slide:not(.slick-cloned)').each(function(i){    
                  $(this).find('img').attr("src",""+imgArray[i]+"");
              })
              

              //Update clone img src's
              $('.slick-cloned').each(function(i){
                  $(this).find('img').attr("src",""+imgCloneArray[i]+"");
              })

					  });


				}
			}

      


			var getOption = function(option,defaultsetting){
				var gettype = typeof defaultsetting;
				//console.log(option)


				switch (gettype){
					case "number":
						switch (option){
						
						case "speed":
						case "autoplaySpeed":
						$optionsform.find("form").prepend("<fieldset><label for=\""+option+"\">"+option+"</label><input id=\""+option+"\" type=\"range\" min=\"50\" max=\"10000\" step=\"50\" value=\""+defaultsetting+"\"  /><span>"+defaultsetting+" </span> ms</fieldset>");
						break;

						case "slidesToShow":
						case "slidesToScroll":
						$optionsform.find("form").prepend("<fieldset><label for=\""+option+"\">"+option+"</label><input id=\""+option+"\" type=\"text\" value=\""+defaultsetting+"\" /></fieldset>");
						break;
						
						}
					break;
					
					case "boolean":
					var setchecked = defaultsetting ? " checked=\"checked\"" : "";
					$optionsform.find("form").prepend("<fieldset><label for=\""+option+"\">"+option+"</label><input id=\""+option+"\" type=\"checkbox\" value=\""+defaultsetting+"\""+setchecked+" /><span>"+defaultsetting+"</span></fieldset>");
					// 	switch (option){

					// 		case "cubiceasing":
					// 		break;

					// 		


					// 		//.prepend("<fieldset><label for=\""+option+"\">"+option+"</label><input id=\""+option+"\" type=\"checkbox\" value=\""+defaultsetting+"\""+setchecked+" /><span>"+defaultsetting+"</span></fieldset>");
					// 	}
					break;

					case "string":
					$optionsform.find("form #css-easing option[data-value='"+defaultsetting+"']").remove();//.attr("selected;","selected");

					break;
					default:
					var setchecked = defaultsetting ? " checked=\"checked\"" : "";
					$optionsform.find("form").prepend("<fieldset><label for=\""+option+"\">"+option+"</label><input id=\""+option+"\" type=\"checkbox\" value=\""+defaultsetting+"\""+setchecked+" /><span>"+defaultsetting+"</span></fieldset>");
				}
			}
			
			
			var stringToBoolean= function(string){
       //console.log(string)
				if (string==="---Select---"){alert("");string="linear"};
				if(!isNaN(string)){stringoutput=parseFloat(string);}else{stringoutput=string.toLowerCase()};
				
				switch(stringoutput){
					case "true": case "yes": 
					return true
					return Boolean(stringoutput);
					break;
					case "false": case "no": case null: 
					return false
					return Boolean(stringoutput);
					break;
					default: 
					return stringoutput;
				}

			}
			
			var createmenu = function(){
				for (var key in $availablevariables) {
				   var obj = $availablevariables[key];
				   getOption(key,obj);
				}
			}
			createmenu();
			callplugin.init();
			

			
			$(document).on('change',"input, select",function(e){
				  var currentitem = $(this);
				  var getoption = currentitem.attr("id");
				  var getvalue = currentitem.val();
     

				  if (currentitem.attr('type') == "checkbox"){
					var getvalue = currentitem.is(':checked') ? "true" : "false" ;
				  }

				  if (currentitem.attr('data-type') == "select"){
					//console.log(getvalue)
					//var getvalue = ;
				  }


				  clearTimeout($setdelay);
				  $setdelay = setTimeout(function() {
					currentitem.next("span").text(getvalue);
         console.log(stringToBoolean(getvalue))
					$availablevariables[getoption] = stringToBoolean(getvalue);
           console.log($availablevariables)

					callplugin.change();
				  }, 600);
			});

      

      

      
      
			

		
			
		});</script>

		

<!-- 		// <script type="text/javascript" src="script/slick.js"></script> -->
		
	    <script src="js/bootstrap.min.js"></script>
      <script src="js/snap.svg-min.js"></script>

	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="js/ie10-viewport-bug-workaround.js"></script>

	    <script src="js/offcanvas.js"></script>

      <script>
              
            </script>

</body>
</html>
