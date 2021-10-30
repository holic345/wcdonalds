<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "header.jsp"%>
<script>
(function($,window)
{
	var commonJs = {};
	this.commonJs = commonJs;
	var doc;
	var win;
	var wH = 0;
	// var wW = 0; 
	var header;
	var $resize = $({});


	var utils = {
		scrollDisabled : function()
		{
			// console.log('idsenabled')
			$('html , body').css('overflow','hidden');
		},
		scrollEnabled : function()
		{
			$('html , body').css('overflow','');
		}
	}

	var content = 
	{
		el : 
		{
			topMenu : { 
				hMenu		:	null, 
				hLogo		:	null,
				menu		:	null, 
				util		:	null,
				depth1		:	null,
				topSearch	:	null,
			}  , 
			footer	: null,
			btnTop	: null,
		},
		
		init : function()
		{
			// values
			content.el.topMenu.hLogo		=	doc.find('.headArea .hLogo')
			content.el.topMenu.hMenu		=	doc.find('.hMenu');
			content.el.topMenu.menu			=	doc.find('.hMenu .menu');
			content.el.topMenu.depth1		=	doc.find('.hMenu .depth1');
			content.el.topMenu.util			=	doc.find('.hMenu .util');
			content.el.topMenu.util			=	doc.find('.hMenu .util');
			content.el.topMenu.topSearch	=	doc.find('.hMenu .topSearch');
			content.el.topMenu.searchClose	=	doc.find('.hMenu .topSearch .close');
			content.el.footer				=	doc.find('.footer');
			content.el.btnTop				=	doc.find('button.btnTop');
			// console.log('---=== ', content.el.footer.offset().top );

			this.toggleButton();
			this.tabToggle();

			//�묎렐��
			this.setAccessibility();
		},
		toggleButton : function()
		{
			$('.toggle').find('>button').each(function()
			{
				var t	= $(this);
				var b	= t.closest('.toggle');
				var con	= doc.find('#'+t.attr('aria-controls'));
				var arr = [];
				if( t.attr('text') ){
					arr = t.attr('text').split('|');
				}

				$(this).on('click',function(evt)
				{
					var s , n;
					evt.preventDefault();
					if( t.attr('aria-selected') == 'true' )
					{
						t.attr({
							'aria-selected':false,
							'aria-expanded':false
						});
						b.removeClass('open');
						con.stop().show();
						n = con.outerHeight();
						s = 200 * (n/400 )
						con.slideUp(s);
						if( arr.length ){
							t.text(arr[0]);
						}
					}else{
						t.attr({
							'aria-selected':true,
							'aria-expanded':true
						});
						b.addClass('open');
						n = con.outerHeight();
						s = 100 * (n/400 )
						// console.log( s )
						con.stop().hide().slideDown(s);
						if( arr.length ){
							t.text(arr[1]);
						}
					}

				});
			});

			// $('.mapInfo>button').on('click',function(evt)
			// {
			// 	evt.preventDefault();
			// 	var t = $(this);
			// 	if( t.attr('aria-selected') == 'true' )
			// 	{
			// 		t.attr({
			// 			'aria-selected':false,
			// 			'aria-expanded':false
			// 		}).text('吏��� 蹂닿린');
			// 	}else{
			// 		t.attr({
			// 			'aria-selected':true,
			// 			'aria-expanded':true
			// 		}).text('吏��� �リ린');
			// 	}
			// });

		},
		
		tabToggle : function()
		{

			$('.tabMn,.subtabMn').each(function()
			{
				$(this).on('click','li>a',function( evt )
				{

					evt.preventDefault();
					var _this = $(this);
					$(this).attr('aria-selected',true).
					closest('li').addClass('on').
					siblings('li').removeClass('on').find('a').attr('aria-selected',false);
					var ul = _this.closest('ul , ol');
					if( ul.hasClass('tabMn') )
					{
						$('.tabCont').hide();
						// var _href = $( _this.attr('href')  ).find('>ul>li>a[aria-selected=true]').attr('href');
						var _href = $( _this.attr('href')  ).find('>ul>li>a[aria-selected=true],>ol>li>a[aria-selected=true]').attr('href');
						$( _href  ).show();	
					} else if( ul.hasClass('subtabMn') ){
						$('.subtabCont').hide();
					}
					$( _this.attr('href')  ).show();

				});

			});

		},
		
        /**2020.06.10**/
        bind : function(){
            var limit = header.height();
            var ch = false;
            doc.on('scroll' , scrollH );
            var goDelivery = doc.find('.aside>.goDelivery');
            // var applyCont02 = doc.find('.applyCont02');

            content.el.btnTop.on('click',function()
            {
                content.el.btnTop.removeClass('fixedB');
                $('body , html').animate({'scrollTop':0},200);
            });

            function scrollH()
            {
                if( content.el.footer.length > 0)
                {
                    if( doc.scrollTop()+$(window).height() < content.el.footer.offset().top )
                    {
                        content.el.btnTop.removeClass('fixedB');
                        doc.find('.aside').removeClass('fixedB');
                    }else{
                        if(doc.scrollTop() !== 0){
                            content.el.btnTop.addClass('fixedB');
                            doc.find('.aside').addClass('fixedB');
                        }
                    }
                }

                if( doc.scrollTop() < limit ){
                    header.removeClass('fixed');
                    if( ch )
                    {
                        ch = false;
                        header.removeClass('fixed');
                        return
                    }
                }else{
                    if( !ch )
                    {
                        // console.log('222')
                        ch = true;
                        header.addClass('fixed');
                        header.stop().css({
                            'margin-top':'-30px'
                        }).animate({
                            'margin-top':0
                        },100,function(){
                            // header.addClass('fixed');
                        })
                        return
                    }
                }

                // if( goDelivery.length && applyCont02.length )
                // {
                //     // console.log( doc.scrollTop() , applyCont02.offset().top )
                //     // if( goDelivery.offset().top > applyCont02.offset().top ){
                //     if( doc.scrollTop() + (wH/2-65) > applyCont02.offset().top ){
                //         doc.find('.aside').addClass('fixedB')
                //     }else{
                //         doc.find('.aside').removeClass('fixedB')
                //     }
                // }


                // console.log( )

            }
            setTimeout(scrollH,10)
            scrollH();
            //  topMenu focus controll
            // console.log( content.el.topMenu.topSearch.length )
            var hMenu	=	content.el.topMenu.hMenu;
            hMenu.each(function()
            {
                // var hMenu = $(this);
                var menu	=	content.el.topMenu.menu;
                var hLogo	= 	content.el.topMenu.hLogo;
                var util	=	content.el.topMenu.util;
                // var depth1	=	content.el.topMenu.depth1;
                // var headArea	=	content.el.topMenu.headArea;

                menu.find('>ul>li>a').on('keyup	, mouseover',function(evt)
                {
                    header.addClass('open');
                });

                menu.on('mouseleave',function(evt)
                {
                    header.removeClass('open');
                });

                util.find('a').on('focusin' , function()
                {
                    header.removeClass('open');
                });

                hLogo.on('focusin' , function()
                {
                    header.removeClass('open');
                });

                util.find('.lang').on('keydown',function(e)
                {
                    if( e.shiftKey ){
                        header.addClass('open');
                    }
                });
            });

            var topSearch = content.el.topMenu.topSearch;
            topSearch.on('click','.srch',function( evt )
            {
                utils.scrollDisabled();
                topSearch.addClass('open');
                evt.preventDefault();
                // $('.dimmed').show();
                topSearch.find('>.dimmed').remove()
                topSearch.append('<div class="dimmed"></div>')
                // open
            });
            content.el.topMenu.searchClose.on('click',function( evt )
            {
                utils.scrollEnabled();
                evt.preventDefault();
                topSearch.removeClass('open');
                topSearch.find('>.dimmed').remove()
                // $('.dimmed').hide();
            });
        },
        /**2020.06.10**/

		setAccessibility: function(){
			//諛붾줈媛�湲�
			$('.skipMenu >a').off('keydown').on('keydown', function(e){
				if( e.which === 13 ) {
					$('#container').attr('tabindex',0).focus();
				}
			});
		}
	}


	var slider = {
		setup : function( target )
		{
			var sTarget = target.find('.swiper');
			sTarget.addClass('swiper-container');
			sTarget.find('>ul , >ol').addClass('swiper-wrapper');
			sTarget.find('>ul>li , >ol>li').addClass('swiper-slide');

			if( target.find('.swiper').data('swipe') )
			{
				target.find('.swiper').data('swipe').destroy();
				target.find('.indicator .bar').stop().css('width','0');
				// target.find('.slide-invisible-blank').remove();
			}

			var opt = {};
			if( target.hasClass('basicSwiper') )
			{
				// console.log('-- basic -')
				var transitionVisible = function()
				{
					bar.stop().css('width','0');
					target.find('.swiper-slide').css('visibility','visible');
				}
				var transitionHidden = function()
				{
					target.find('.swiper-slide').css('visibility','hidden');
					if( target.hasClass('swiperType02') ){
						target.find('.swiper-slide-next').css('visibility','visible');
					}
					target.find('.swiper-slide-active').css('visibility','visible');
				}
				opt = {
					delay : 5000 , 
					loop: true,
					navigation : {
						nextEl: target.find('.next'),
						prevEl: target.find('.prev'),
					},
					on : {
						transitionEnd : function(  )
						{
							if( target.find('.indicator button').hasClass('pause') ){
								nextH();
							}
							transitionHidden();
						},
						sliderMove 	:	transitionVisible,
						// slideChange 	:	transitionVisible,
						transitionStart	:	transitionVisible,
						// touchStart		:	transitionVisible
					}
				}
				// �ㅻⅨ ����
				if( target.hasClass('swiperType02') ){
					opt.slidesPerView = 2;
					opt.slidesPerGroup =  2;
					opt.spaceBetween = 50;
				}

				var bar			= target.find('.indicator .bar');
				var inButton	= target.find('.indicator button');
				inButton.off().addClass('pause')

				inButton.on('click' , function(evt)
				{
					evt.preventDefault();
					if( $(this).hasClass('pause')  ){
						bar.stop().css('width','0');
						$(this).removeClass('pause');
						$(this).text('�ъ깮');
					}else{
						$(this).addClass('pause');
						$(this).text('�뺤�');
						nextH();
					}
				});

				inButton.on('keydown',function( evt )
				{
					if( !evt.shiftKey ){
						nextH();
					}
					
				});
				inButton.on('keyup',function( evt )
				{
					if( evt.shiftKey ){
						transitionVisible();
						transitionHidden();
					}
				});

				target.find('.prev').off().on('keyup',function( evt ){
					if( evt.shiftKey ){
						nextH();
					}else{
						transitionVisible();
						transitionHidden();
					}
				})
			}

			function nextH()
			{
				if( !bar.length ){
					return
				}
				
				/* 2020.6.4 KV 鍮꾨뵒�� 異붽� */
				var $active = $('.swiper-slide-active');
				if( $active.hasClass('video')){
					var video = $active.find('video');
					
					// �곸긽 �쒓컙�� 留욎떠 議곗젅 �꾩슂
					var duration = 61000;

					bar.stop().css('width','0')
					bar.animate({
						'width':'100%'
					}, duration , function(){
						sw.slideNext();
					})

					video.get(0).load();
					setTimeout(function(){
						video.get(0).play();
					}, 100);

					var $btn = $active.find('.sound');
					$btn.off().on('click', function(e){
						e.stopPropagation();
						if( ! $btn.hasClass("off")){
							video.prop('muted', true);
							$btn.addClass("off").text('Sound on');
						}else {
							video.prop('muted', false);
							$btn.removeClass("off").text('Sound off');
						}
					});

				}else{
					bar.stop().css('width','0')
					bar.animate({
						'width':'100%'
					},opt.delay , function(){
						sw.slideNext();
					})
					if ( $('.swiper li').hasClass('video') ){
						var video = $('.swiper video');
						video.get(0).load();
						video.get(0).pause();
						video.each(function(){
							$(this).get(0).pause();
						});
					}
				}
				/* 2020.6.4 KV 鍮꾨뵒�� 異붽� �� */
			}

			var sw =  new Swiper(sTarget , opt );
			target.find('.swiper').data('swipe',sw);
			nextH();
		},

		bind : function(){
			
		}
	}

	var popup = 
	{
		image : {
			el	: {
				wrapper : ''
			},
	
			show : function( target )
			{
				// popup.focusIn();
				// console.log('111');
				// console.log('sss')
				var obj = target.data('obj');
				if( !obj ){
					obj = $.extend(false, this , 
					{
						el :{
							wrapper : target
						}
					});
					target.data('obj',obj);
					obj.init( target );
				}
				obj.el.wrapper.show();
				$('.dimmed').each(function(){
					$(this).show();
				});
				// console.log('--===')
				$('.wrapper').attr('tabindex','-1');
				target.attr('tabindex','0').focus();
			},
	
			hide : function(target)
			{
				target.hide();
				$('.dimmed').each(function(){
					$(this).hide();
				});
				$('.wrapper').removeAttr('tabindex');
			},

			bind : function()
			{
				var target = this.el.wrapper; 
				var hide = this.hide;
				var close = target.find('button.close');
				close.on('click',function(evt)
				{
					evt.preventDefault();
					hide(target)
				});
			},

			init : function( target )
			{
				var obj = target.data('obj');
				obj.bind();
			}
		},

		basic : {
			el	: {
				popLayer	:	'',
				layCont		:	'',
				scroll		:	''
			},
	
			show : function( target )
			{
				//�묎렐�� �쒓렇
				this.$prevFocus = $(':focus');

				utils.scrollDisabled();

				var obj = target.data('obj');
				if( !obj ){
					obj = $.extend(false, this , 
					{
						el :{
							popLayer : target,
							layCont:target.find('.layCont'),
							scroll:target.find('.scroll')

						}
					});
					target.data('obj',obj);
					obj.init( target );

					//11.04
					target.find('.layCont').attr('tabindex','0');
					//11.04
				}
				obj.el.popLayer.show();
				$resize.trigger('resize',{target:target});
				$('.dimmed').each(function(){
					$(this).show();
				});

				$('.wrapper').attr('tabindex','-1');
				target.find('.layCont').focus();
				
				//�묎렐�깊깭洹�
				if(target.find('.scroll .contBtm').length > 0){
					target.find('.scroll .contBtm').attr('tabindex', 0);
				}else if(target.find('.scroll').length > 0){
					target.find('.scroll').attr('tabindex', 0);
				}
				target.off('keydown.tabkey').on('keydown.tabkey', function(e){
					var keyCode = e.keyCode || e.which; 
					var $focusFirst = $(this).find('[tabindex="0"], select, button,input,a').first();
					var $focusLast = $(this).find('[tabindex="0"], select, button,input,a').last();

					if (keyCode == 9) { 
						if(e.shiftKey){
							if($(e.target).get(0) === $focusFirst.get(0)){
								e.preventDefault();
								$focusLast.focus();
							}
						}else{
							if($(e.target).get(0) === $focusLast.get(0)){
								e.preventDefault();
								$focusFirst.focus();
							}
						}
					} 
				})
			},
	
			hide : function(target)
			{
				target.hide();
				$('.dimmed').each(function(){
					$(this).hide();
				});

				//11.04
				$('.wrapper').attr('tabindex','');
				//11.04
				$('.btnM').focus();

				utils.scrollEnabled();
				//�묎렐�� �쒓렇
				if(this.$prevFocus && this.$prevFocus.length > 0){
					this.$prevFocus.focus();
				}
			},

			handler : function(evt)
			{

				// console.log('--===---')
				var target = evt.data.target;
				if( target ){
					if( target.css('display') !='block' ){
						return
					}
				}
				var el = target.data('obj').el;
				el.popLayer.css({
					'top':'',
					'margin-top':''
				});
				el.layCont.css({
					'height':''
				})
				el.scroll.css({
					'height':''
				});
				var t = parseInt( el.popLayer.css('margin-top') ) + parseInt( el.popLayer.css('margin-bottom') ) 
				var p = parseInt( el.layCont.css('padding-top') ) + parseInt( el.layCont.css('padding-bottom') ) + t ;
				var b = (target.hasClass('layerType02')) ? parseInt( el.popLayer.find('.btnArea').outerHeight() ) : 0;
				// console.log( target )
				if( el.scroll.height() > ( wH - p) )
				{
					// console.log('111')
					el.layCont.css({
						'height':wH-(t+b)+'px'
					})
					el.scroll.css({
						'height':wH-(p+b)+'px'
					});
				}
				el.popLayer.css({
					'top':'50%',
					'margin-top': -el.layCont.outerHeight()/2- parseInt( el.layCont.css('margin-top') ) +'px'
				});
			},

			bind : function()
			{
				// console.log('laye bind')
				var target = this.el.popLayer; 
				var hide = this.hide;
				var close = target.find('button.layClose');
				close.on('click',function(evt)
				{
					evt.preventDefault();
					popup.basic.hide( target );
				});

				// var target = this.el.popup;
				$resize.on('resize', {target:target} ,this.handler);
			},

			init : function( target )
			{
				var obj = target.data('obj');
				obj.bind();
			}
		}
	}
	// popup.image.init()

	var topMenu = {
		TopActive : function( idx )
		{
			var div = $('.header .hMenu .depth1>li').eq(idx)
			if( div.length ){
				div.find('a').addClass('current');
			}
		},
		TopDeactive : function( )
		{
			$('.header .hMenu .depth1>li a').removeClass('current');
		}
	}


	var t = $;
	var selectMenu = {
		init : function( )
		{
		
			$.widget( "custom.customSelect", $.ui.selectmenu, 
			{

				_renderItem: function( ul, item ) 
				{
					var li = $( "<li>" ),
					wrapper = $( "<a>", { text: item.label } );
			
					if ( item.disabled ) {
						li.addClass( "ui-state-disabled" );
					}
					// console.log('--render')
					return li.append( wrapper ).appendTo( ul );
					
				},

				_drawButton: function() 
				{
					var e, i = this, s = this._parseOption(this.element.find("option:selected"), this.element[0].selectedIndex);
					this.labels = this.element.labels().attr("for", this.ids.button),
					// console.log('xxx', '',this )

					this._on(this.labels, {
						click: function(t) {
							this.button.focus(),
							t.preventDefault()
						},
					}),
					this.element.hide(),
					this.button = t("<button>", {
						tabindex: this.options.disabled ? -1 : 0,
						id: this.ids.button,
						// role: "combobox",
						"aria-expanded": "false",
						"aria-autocomplete": "list",
						"aria-owns": this.ids.menu,
						"aria-haspopup": "true",
						title: this.element.attr("title")
					}).insertAfter(this.element),
					this._addClass(this.button, "ui-selectmenu-button ui-selectmenu-button-closed", "ui-button ui-widget"),
					
					// 蹂�寃�
					// e = t("<label>").appendTo(this.button),
					// this._addClass(e, "ui-selectmenu-icon", "ui-icon " + this.options.icons.button),
					// 蹂�寃�

					this.buttonItem = this._renderButtonItem(s).appendTo(this.button),
					this.options.width !== !1 && this._resizeButton(),
					this._on(this.button, this._buttonEvents),
					this.button.one("focusin", function() {
						i._rendered || i._refreshMenu()
					})
					
				},

				// _setAria: function(t) 
				// {
					// var e = this.menuItems.eq(t.index).attr("id");
					// this.button.attr({
						// "aria-labelledby": e,
						// "aria-activedescendant": e
					// })
					// this.menu.attr("aria-activedescendant", e)
				// },

				_renderButtonItem: function( item ) 
				{
					var buttonItem = $( "<span>", {
						"class": "ui-selectmenu-text"
					});
					this._setText( buttonItem, item.label );
					// console.log('--xxx')
					// console.log( this.element.parent() )
					this.element.parent().find('>button').attr('tabindex','-1');
					this.element.parent().find('.ui-selectmenu-menu').attr('tabindex','-1');
					return buttonItem;
				}
			});

		},

		update : function( target )
		{
			// console.log('--00')
			var select = target;


			if( select.data('selectBox') ){
				select.customSelect( "refresh" );

				// console.log('updatelll')
			}else{
				var opt = {
					appendTo	:	select.parent(),
					select		:	function( event, ui ) {
						// console.log('===')
						select.trigger('select');
						var list = select.parent().find('.ui-menu-item');
						list.find('a').removeAttr('aria-selected');
						list.eq(ui.item.index).find('a').attr('aria-selected',true);
					},
					close : function(){
						select.trigger('close');
						$(this).closest('.selectWrap').attr('style','z-index:10 !important');
					},
					change		:	function( event, ui ) {
						select.trigger('change');
					},
					open : function(){
						select.trigger('open');
						$(this).closest('.selectWrap').attr('style','z-index:11 !important');
					}
				}
				if( select.attr('style') ){
					var w = parseInt(select.attr('style').replace('width:',''));
					opt.width = w;
				}

				select.customSelect( opt );
				select.data('selectBox',true);

				select.one('close',function()
				{
					select.parent().find('.ui-menu-item').eq(select[0].selectedIndex).find('a').attr('aria-selected',true);
				});
				// var m = select.customSelect('instance');
				select.one('open',function()
				{
					var a = select.parent().find('.ui-menu-item a');
					a.removeAttr('tabindex');
					a.on('click',function()
					{		
					}) 
				})
				// console.log('xx ',select.parent().find('>button').length)
				
				select.css({
					display:'block',
					position:'absolute',
					// top:'100px'
					'margin-left' : '-100000px'
				})
				
				var parent = select.parent();
				select.on('focus' , function()
				{
					parent.addClass('focusLine')
				})
				select.on('focusout' , function()
				{
					parent.removeClass('focusLine')
				})

				select.on('change',function(){
					// console.log('xxx')
					select.customSelect( "refresh" );
					
				})
			}
		},

	}

	commonJs.main 				=	{};
	commonJs.popup 				= 	popup;
	// commonJs.popup.image		=	popup.image;
	// commonJs.popup.basic		=	popup.basic;

	commonJs.utils 				= 	{}
	commonJs.utils.swiper		=	slider.setup;
	commonJs.menu 				= 	{}
	commonJs.menu.TopActive		=	topMenu.TopActive;
	commonJs.menu.TopDeactive	=	topMenu.TopDeactive;

	commonJs.select				=	{}
	commonJs.select.update		=	selectMenu.update;

	// commonJs.main.bannerResize = content.mainBannerResize;

	$(function()
	{
		doc = $(document);
		win = $(window);
		header = $('.header');

		win.on('resize' , resizeH );
		function resizeH()
		{
			// headAreaH = $('.headArea').outerHeight();
			// floatingBtnH = $('.floatingBtn').outerHeight();
			wH = win.height();
			// wW = win.width();
			$resize.trigger('resize');
		}
		resizeH();
		content.init();
		content.bind();
		$('.basicSwiper').each(function()
		{
			slider.setup( $(this) );
		});

		selectMenu.init();
		doc.find('div.selectWrap').each(function()
		{
			// selectMenu.update( $(this) );
			selectMenu.update( $(this).find('select') );
			$(this).css('z-index',100000)
		});

	});

})(jQuery,window)
</script>
<!-- <link rel="stylesheet" href="/resources/css/story/common.css">  -->
		<div id="container">
			<div class="content">
				
		<div class="visualArea bgStory01" data-title="브랜드 소개" data-desc="브랜드 소개">
					<div class="inner">
						<h1 class="titDep1">브랜드 소개</h1>
						<p class="subCopy">1955년 작은 레스토랑에서부터 지금에 이르기까지 고객이 가장 좋아하는 장소이자,<br>음식을 즐기는 최고의 방법이 되기 위해 맥도날드는 오늘도 노력합니다.</p>
						<ul class="navPath">
							<li><a href="main.do">Home</a></li>
							<li><a href="/kor/story/main.do">Story</a></li>
							<li><a href="brandintro.do">브랜드 소개</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="brandintro.do" role="button" aria-selected="true">맥도날드 소개</a></li>
							<li><a href="brandhistory.jsp" role="button">맥도날드 철학 및 역사</a></li>
						</ul>
						<div class="brnadCont01">
							<div class="img"><img src="resources/img/img_brand_cont01.jpg" alt="1955 맥도날드 매장 이미지"></div>
							<h2 class="titDep2 mt50">세계 1위의 푸드서비스 기업, 맥도날드</h2>
							<p class="txtInfo">전세계 120개국 3만 7천여 개의 매장에서 매일 6,900만명의 고객들에게 제품과 서비스를 제공하고 있는 맥도날드는 전세계인들이 사랑하는<br>
							퀵 서비스 레스토랑(QSR, Quick Service Restaurant)이자 세계 1위의 푸드서비스 기업으로, 고객에게 더 나은 경험을 제공함으로써<br>
							&apos;고객이 가장 좋아하는 장소이자 음식을 즐기는 최고의 방법(Our Customer’s Favorite Place and Way to Eat)&apos;이 되기 위해 노력하고 있습니다. 
						</div>
						<div class="brnadCont02">
							<h3 class="titDep3">한국 맥도날드의 첫 걸음</h3>
							<div class="socialList">
								<ul>
									<li>
										<span class="thum"><img src="resources/img/img_brand_cont02_01.jpg" alt="서울올림픽 이미지"></span>
										<strong>1988 서울 올림픽을 개최하며 서울이 세계 속에<br>우뚝 섰던 그때의 감동을 기억하십니까?</strong>
										<p>159개국의 83,190명의 선수가 참가한 1988 서울 올림픽과 함께 맥도날드가<br>한국을 찾아왔습니다. 이후 맥도날드는 빅맥, 후렌치 후라이 그리고 해피밀과 같이 세계적으로 유명한 메뉴를 선보이며 한국 소비자들이 선호하는 즐거운<br> 
										외식 공간으로 사랑을 받고 있습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="resources/img/img_brand_cont02_02.jpg" alt="맥도날드 압구정점 이미지"></span>
										<strong>한국 첫 맥도날드 매장, 압구정점 그랜드 오프닝</strong>
										<p>맥도날드는 가장 트렌디한 장소로 떠오르는 압구정동에 첫 레스토랑을 열었습니다.수백 명의 고객들이 레스토랑 앞에 길게 줄을 늘어서며 맥도날드의<br> 
										성공적인 시작을 함께 축하했고 이를 통해 맥도날드가 한국 시장에서 지속적으로 성장할 수 있다는 잠재력을 보여 주었습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="resources/img/img_brand_cont02_03.jpg" alt="맥도날드의 미래 이미지"></span>
										<strong>우리는 계속해서 나아갑니다.</strong>
										<p>맥도날드는 지난 31년 동안 국내 협력 업체와 긴밀하게 일하고, 현재 <br>
										15,000여명의직원이 근무하는 등 한국 사회의 고용 창출에 기여하고 있습니다. 또한, 30여개 이상의국내외 비즈니스를 지원해 왔습니다. 맥도날드는 좋은<br>
										품질의 제품을 합리적인 가격과최상의 서비스 제공을 통해 고객이 가장<br> 선호하는 장소로 거듭나기 위해 지속적으로 노력할 것입니다.</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="history">
						<div class="inner">
							<h4>맥도날드가 걸어온 길</h4>
							<ul class="tabType01 tabMn totalTabMn">
								<li><a href="#tab02_01" role="button" aria-selected="true">한국</a></li>
								<li><a href="#tab02_02" role="button">글로벌</a></li>
							</ul>
							<div class="tabCont" id="tab02_01" style="display:block">
								<ul class="historyTab subtabMn">
									<li><a href="#tab02_01_01" role="button" aria-selected="true">2010</a></li>
									<li><a href="#tab02_01_02" role="button">2000</a></li>
									<li><a href="#tab02_01_03" role="button">1990</a></li>
								</ul>
								<div class="subtabCont" id="tab02_01_01" style="display:block">
									<ul class="historyList">
										<li class="year2019">
											<strong>2019</strong>
											<div class="yearCont">
												<div class="txt">
													<span>제주, 광주 지역 맥딜리버리 바이크를 친환경 전기 바이크로 전면 교체</span>
													<span>서울시와 전기바이크 교체 업무협약(MOU) 체결</span>
												</div>
												<div class="thum"><img src="resources/img/img_histoy_kor_2019.png" alt="전기바이크 이미지"></div>
											</div>
										</li>
										<li class="year2018">
											<strong>2018</strong>
											<div class="yearCont">
												<div class="txt"><span>2018 평창 동계올림픽 공식 후원</span></div>
												<div class="thum"><img src="resources/img/img_histoy_kor_2018.png" alt="평창동계올림픽 이미지"></div>
											</div>
										</li>
										<li class="year2017">
											<strong>2017</strong>
											<div class="yearCont">
												<div class="txt"><span>프리미엄 수제 버거 '시그니처 버거' 전국 런칭</span></div>
											</div>
										</li>
										<li class="year2016">
											<strong>2016</strong>
											<div class="yearCont">
												<div class="txt">
													<span>국내 첫 미래형 매장 상암 DMC점 오픈</span>
													<span>슈비버거 슈슈버거 출시</span>
													<span>조주연 대표이사 부임</span>
												</div>												
											</div>
										</li>
										<li class="year2015">
											<strong>2015</strong>
											<div class="yearCont">
												<div class="txt"><span>프리미엄 수제 버거 '시그니처 버거' 첫 출시</span></div>
											</div>
										</li>
										<li class="year2014">
											<strong>2014</strong>
											<div class="yearCont">
												<div class="txt"><span>1955 버거 출시</span></div>
											</div>
										</li>
										<li class="year2013">
											<strong>2013</strong>
											<div class="yearCont">
												<div class="txt">
													<span>한국 진출 25주년</span>
													<span>조 엘린저(Joe Erlinger) 대표이사 부임</span>
													<span>‘행복의 버거’ 캠페인 시작</span>
													<span>‘아빠와 함께하는 축구교실’ 및 ‘다문화 가정 어린이 축구교실’ 프로그램 시작</span>
												</div>
											</div>
										</li>
										<li class="year2012">
											<strong>2012</strong>
											<div class="yearCont">
												<div class="txt">
													<span>새로운 메뉴 플랫폼 행복의 나라 메뉴 출시</span>
													<span>새로운 서비스 플랫폼 맥카페(McCafé) 도입</span>
												</div>
											</div>
										</li>
										<li class="year2011">
											<strong>2011</strong>
											<div class="yearCont">
												<div class="txt">
													<span>온라인 축구 매뉴얼 사커 툴킷(Soccer Toolkit) 런칭</span>
												</div>
											</div>
										</li>
										<li class="year2010">
											<strong>2010</strong>
											<div class="yearCont">
												<div class="txt">
													<span>NCSI(국가 고객 만족도 지수) QSR(퀵 서비스 레스토랑) 분야 1위 수상</span>
													<span>쿼터 파운더 치즈 버거 국내 소개</span>
													<span>전국 매장에서 무료 와이파이(Wi-fi) 서비스 시작</span>
													<span>션 뉴튼(Sean Newton) 대표이사 부임</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="subtabCont" id="tab02_01_02">
									<ul class="historyList">
										<li class="year2009">
											<strong>2009</strong>
											<div class="yearCont">
												<div class="txt">
													<span>프리미엄 커피 브랜드 맥카페(McCafé) 출시</span>
												</div>
											</div>
										</li>
										<li class="year2008">
											<strong>2008</strong>
											<div class="yearCont">
												<div class="txt">
													<span>한국 진출 20주년</span>
												</div>
											</div>
										</li>
										<li class="year2007">
											<strong>2007</strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥딜리버리(McDelivery) 서비스 시작</span>
													<span>트랜스 지방(TFA)을 낮춘 후렌치 후라이로 전면 교체</span>
													<span>로날드 맥도날드 어린이 축구 교실 ‘방과후 프로그램’ 시작</span>
													<span>한국RMHC, 양산 부산대학교 어린이 병원에 어린이 병원 학교 설립</span>
													<span>한국RMHC, 소아암 아동의 ‘학교 복귀 및 적응을 위한 통합 프로그램’ 개발</span>
													<span>재단법인 로날드맥도날드하우스 출범</span>
												</div>
											</div>
										</li>
										<li class="year2006">
											<strong>2006</strong>
											<div class="yearCont">
												<div class="txt">
													<span>아침 메뉴 맥모닝(McMorning) 국내 소개</span>
													<span>‘로날드 맥도날드 어린이 축구 교실’ 출범</span>
												</div>
											</div>
										</li>
										<li class="year2005">
											<strong>2005</strong>
											<div class="yearCont">
												<div class="txt">
													<span>24시간 매장 오픈 서비스 시작</span>
													<span>연대 세브란스 어린이 병원에 ‘어린이 병원 학교’ 설립</span>
													<span>맥런치(McLunch) 메뉴 국내 소개</span>
												</div>
											</div>
										</li>
										<li class="year2003">
											<strong>2003</strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥스파이시 상하이 버거(구 상하이 스파이스 치킨 버거) 출시</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="subtabCont" id="tab02_01_03">
									<ul class="historyList">
										<li class="year1997">
											<strong>1997</strong>
											<div class="yearCont">
												<div class="txt">
													<span>불고기 버거 출시</span>
												</div>
											</div>
										</li>
										<li class="year1995">
											<strong>1995</strong>
											<div class="yearCont">
												<div class="txt">
													<span>100호점, 영동점 오픈</span>
												</div>
											</div>
										</li>
										<li class="year1992">
											<strong>1992</strong>
											<div class="yearCont">
												<div class="txt">
													<span>업계 최초로 드라이브 스루(Drive-Thru) 국내 도입</span>
												</div>
											</div>
										</li>
										<li class="year1988">
											<strong>1988</strong>
											<div class="yearCont">
												<div class="thum"><img src="resources/img/img_histoy_kor_1988.png" alt="맥도날드 압구정점 이미지"></div>
												<div class="txt">
													<span>맥도날드 1호점, 압구정점 오픈</span>
												</div>
											</div>
										</li>
										
									</ul>
								</div>
							</div>
							<!-- //한국 -->
							<div class="tabCont" id="tab02_02">
								<ul class="historyTab subtabMn">
									<li><a href="#tab02_02_01" role="button" aria-selected="true">2000</a></li>
									<li><a href="#tab02_02_02" role="button">1900</a></li>
								</ul>
								<div class="subtabCont" id="tab02_02_01" style="display:block">
									<ul class="historyList">
										<li class="yearG2017">
											<strong>2017</strong>
											<div class="yearCont">
												<div class="txt">
													<span>우버이츠(UberEATS)와의 맥딜리버리의 글로벌 런칭을 기념하며<br>7월 26일을 맥딜리버리 데이로 선정</span>
												</div>
											</div>
										</li>
										<li class="yearG2015">
											<strong>2015</strong>
											<div class="yearCont">
												<div class="txt">
													<span>미국 맥도날드 올데이 브랙퍼스트(All Day Breakfast) 론칭</span>
												</div>
											</div>
										</li>
										<li class="yearG2003">
											<strong>2003</strong>
											<div class="yearCont">
												<div class="txt">
													<span>9월 2일 맥도날드의 첫 글로벌 광고 캠페인 ‘I’m lovin’ it’독일 뮌헨에서 론칭</span>
												</div>
											</div>
										</li>
										<li class="yearG2002">
											<strong>2002</strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥플러리가 캐나다 맥도날드 메뉴에 추가됨</span>
												</div>
											</div>
										</li>
									</ul>
								</div>

								<div class="subtabCont" id="tab02_02_02">
									<ul class="historyList">
										<li class="yearG1993">
											<strong>1993</strong>
											<div class="yearCont">
												<div class="txt">
													<span>호주 빅토리아에 세계 최초로 맥카페 오픈</span>
												</div>
											</div>
										</li>
										<li class="yearG1990">
											<strong>1990</strong>
											<div class="yearCont">
												<div class="txt">
													<span>1월 31일 러시아 모스크바 최초 맥도날드 레스토랑 오픈</span>
													<span>오픈일 30,000명 이상 방문</span>
												</div>
											</div>
										</li>
										<li class="yearG1984">
											<strong>1984</strong>
											<div class="yearCont">
												<div class="txt">
													<span>1월 14일 창업자 레이 크록 (Ray Kroc) 사망</span>
												</div>
											</div>
										</li>
										<li class="yearG1983">
											<strong>1983</strong>
											<div class="yearCont">
												<div class="txt">
													<span>미국 맥도날드 전체 레스토랑 메뉴에 치킨 맥너겟 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1975">
											<strong>1975</strong>
											<div class="yearCont">
												<div class="txt">
													<span>에그 맥머핀 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1974">
											<strong>1974</strong>
											<div class="yearCont">
												<div class="txt">
													<span>필라델피아에 로널드맥도날드 하우스 최초 개원</span>
												</div>
											</div>
										</li>
										<li class="yearG1973">
											<strong>1973</strong>
											<div class="yearCont">
												<div class="txt">
													<span>쿼터 파운더 및 쿼터 파운더 치즈 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1968">
											<strong>1968</strong>
											<div class="yearCont">
												<div class="txt">
													<span>빅맥 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1965">
											<strong>1965</strong>
											<div class="yearCont">
												<div class="txt">
													<span>피쉬버거 (Filet-O-Fish sandwich) 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1961">
											<strong>1961</strong>
											<div class="yearCont">
												<div class="txt">
													<span>주식회사 맥도날드 시스템(McDonald’s System, Inc.),</span>
													<span>270만 달러에 맥도날드 운영권 인수</span>
													<span>일리노이 주에 햄버거 대학 설립</span>
												</div>
											</div>
										</li>
										<li class="yearG1956">
											<strong class="fGrey">1956</strong>
											<div class="yearCont">
												<div class="txt">
													<span>프레드 터너(Fred Turner) 사장, 카운터 직으로 맥도날드에 입사</span>
												</div>
											</div>
										</li>
										<li class="yearG1955">
											<strong class="fGrey">1955</strong>
											<div class="yearCont">
												<div class="txt">
													<span>레이 크록, 최초의 맥도날드 매장 오픈</span>
												</div>
											</div>
										</li>
										<li class="yearG1954">
											<strong class="fGrey">1954</strong>
											<div class="yearCont">
												<div class="thum"><img src="resources/img/img_histoy_global_1954.png" alt="레이크록과 맥도날드 형제 이미지"></div>
												<div class="txt">
													<span>레이 크록, 맥도날드 형제 방문</span>
												</div>												
											</div>
										</li>
										<li class="yearG1949">
											<strong class="fGrey">1949</strong>
											<div class="yearCont">
												<div class="txt">
													<span>프렌치 프라이로 포테이토 칩 대체<br>밀크셰이크 (Triple Thick Milkshake) 메뉴 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1948">
											<strong class="fGrey">1948</strong>
											<div class="yearCont">
												<div class="txt">
													<span>메뉴를 9개로 줄이며 레스토랑 재오픈</span>
												</div>
											</div>
										</li>
										<li class="yearG1940">
											<strong class="fGrey">1940</strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥도날드 형제, McDonald’s Bar-B-Q 레스토랑 오픈</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- //글로벌 -->
						</div>
					</div>
				</div>

			</div>
			<div class="aside">
				<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
		<!-- //container -->
     
	<div class="dimmed"></div>
	<div id="materialPop" class="popLayer layerS">
		<div class="layCont" id="materialPopCon">
			
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
	<script id="materialPopText" type="text/templet">
	<div class="scroll ingrInfo">
	<div class="ingrTop">
		<div class="img"><img src="{pc_image_url}" alt="{pc_kor_alt}"></div>
		<h2 class="tit">{pc_kor_desc}</h2>
	</div>
	<div class="ingrCon">
		{pc_kor_desc}
	</div>
	</div>
	</script>
	<div class="popLayer layerL layerType02" id="storeSearch">
		<div class="layCont">
			<div class="scroll storeSch">
				<div class="schTop">
					<h2 class="popTit">주방 공개의 날/쿠킹 클래스 운영매장</h2>
					<fieldset class="schArea">
						<legend>매장검색</legend>
						<div class="field01">
							<div class="formWrap">
								<label for="store01">시/도</label>		
								<div class="selectWrap">
									<select title="시/도 선택" id="store01" style="width:200px" onchange="getGugunJsonp()">
												<option value="">전체</option>
						                        <option value="서울">서울</option>
						                        <option value="경기도">경기도</option>
						                        <option value="강원도">강원도</option>
						                        <option value="광주">광주</option>
						                        <option value="경상남도">경상남도</option>
						                        <option value="경상북도">경상북도</option>
						                        <option value="대전">대전</option>
						                        <option value="대구">대구</option>
						                        <option value="부산">부산</option>
						                        <option value="인천">인천</option>
						                        <option value="울산">울산</option>
						                        <option value="제주">제주</option>
						                        <option value="전라남도">전라남도</option>
						                        <option value="전라북도">전라북도</option>
						                        <option value="충청남도">충청남도</option>
						                        <option value="충청북도">충청북도</option>
						             </select>
								</div>
							</div>
							<div class="formWrap">
								<label for="store02">시/군/구</label>		
								<div class="selectWrap">
									<select title="시/군/구 선택" id="store02" style="width:200px">
										<option value="">전체</option>
									</select>
								</div>
							</div>				
						</div>
						<div class="field02">
							<span class="formWrap">
								<label for="store03">매장</label>
								<input type="text" id="store03" placeholder="ex)안양">
								<button type="button" class="btnMC btnM" onclick="getStoreList()">검색</button>
							</span>
						</div>
					</fieldset>
					<p class="notiTxt">검색이 되지 않는 매장은 다음 달에 행사 계획이 없는 매장입니다.</p>
				</div>
				<div class="schCon">
					<!-- 지도영역 -->
					<div id="storePopMap" class="map">
						
					</div>
					<!-- //지도영역 -->
					<!-- 검색결과 있음-->
					<div class="result" id="storeS">
						<ul id="storePopListUl">
						
							
						
						</ul>
					</div>
					<!-- //검색결과 있음-->
					<!-- 검색 결과 없음 -->
					<p class="noResult" id="storeN" style="display:none;"><b class="color01" id="searchWordShow"></b>에 대한 검색결과가 없습니다.</p>
					<!-- 검색 결과 없음 -->
				</div>
			</div>			
		</div>
		<!-- //.layCont-->
		<div class="btnArea">
			<button type="button" class="btnMC btnM" onclick="selectStorePop()">선택완료</button>
		</div>				
		<button type="button" class="layClose">닫기</button>
	</div>
	<script>

	if($(location).attr('pathname') == "/kor/kitchen_step1.do"){//주방 공개의 날에서만 지도 호출 2019-12-18
		var mapPop;
		var marker;
	    var mapContainerPop = document.getElementById('storePopMap'),
		mapOptionPop = {
	         center: new daum.maps.LatLng(37.494879, 127.130762),
	         level: 3
		};
		mapPop = new daum.maps.Map(mapContainerPop, mapOptionPop); // 지도를 생성합니다
		$(window).on("load",function(){
			$("#store01").select(function(){ getGugunJsonp();});
		}); 
	}
	
	function showStorePopMaker(obj){
			if(marker!=undefined && marker!=null)marker.setMap(null);    
			
			var positions = 
				{
			        title: $(obj).data("a_company"), 
			        latlng: new daum.maps.LatLng($(obj).data("a_loc_x"),$(obj).data("a_loc_y"))
			    };
			var imageSize = new daum.maps.Size(54, 70); 
		    // 마커 이미지를 생성합니다    
		    var markerImage = new daum.maps.MarkerImage("/kor/images/whats/ico_marker.png", imageSize); 
		    
		    // 마커를 생성합니다
		     marker= new daum.maps.Marker({
		        map: mapPop, // 마커를 표시할 지도
		        position: positions.latlng, // 마커를 표시할 위치
		        title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    marker.setMap(mapPop);  
		    var mLabel = new kakao.maps.InfoWindow({
		        position: positions.latlng, // 지도의 중심좌표에 올립니다.
		        content: positions.title // 인포윈도우 내부에 들어갈 컨텐츠 입니다.
		    });
		    mLabel.open(mapPop, marker)
		    mapPop.panTo(positions.latlng);
	}
	function getGugunJsonp(){
		if($("#store01").val()==""){
			$("#store02").html("<option value=\"\">전체</option>");
			commonJs.select.update($('#store02'));
		}else{
			$.support.cors = true;
			$.ajax({
			    url : "/kor/kitchen_getGugun.do",
			    data : {a_sido:$("#store01").val()},
			    dataType : "json",
			    success: function(data) {
			    	$("#store02").html("");
					var html="";
					for (var i=0;i<data.list.length;i++){
						html += "<option value='"+data.list[i].gugun+"'>"+data.list[i].gugun+"</option>";
					}
					$("#store02").append(html);
					commonJs.select.update($('#store02'));
			    }
			});
		}
	}
	function getStoreList(){
		if($.trim($("#store01").val()) =="" && $.trim($("#store02").val())=="" && $.trim($("#store03").val())==""){ 
			alert("매장명을 입력해주세요"); 
			$("#store03").focus();
		}else{
			$.post("/kor/kitchen_getStoreList.do",
					{a_sido:$("#store01").val(), a_gugun:$("#store02").val(), a_company:$("#store03").val() },
				   function(data){
						var html="";
						if(data.list.length > 0){
							$("#storePopListUl").html("");
							for (var i=0;i<data.list.length;i++){
								html += makeHtml("storeListPop",data.list[i]);
							}
							altEscapeTag();
							$("#storePopListUl").append(html);
							$("#storeS").show();
							$("#storePopMap").show();
							$("#storeN").hide();
						}else{
							$("#searchWordShow").html($("#store03").val());
							$("#storePopMap").hide();
							$("#storeS").hide();
							$("#storeN").show();
						}
						$(window).trigger('resize');
				   },
				   "json");
		}
	}
	function selectStorePop(){
		if(		$("input:radio[name='store_info']:checked").length>0  ){
			$("#scode").val($("input:radio[name='store_info']:checked").val());
			$("#store_name").val($("input:radio[name='store_info']:checked").data("a_company"));
			commonJs.popup.basic.hide($('#storeSearch'));
			getEvent();
		}else{
			alert("매장을 선택하셔야 합니다");
		}
	}
	</script>
	<script id="storeListPop" type="text/templet">
					<li>
						<span class="formWrap labelR">
							<input type="radio" name="store_info" id="ck_{a_scode}" data-a_loc_x="{a_loc_x}" data-a_loc_y="{a_loc_y}" data-a_scode="{a_scode}" data-a_company="{a_company}"  value="{a_scode}" onclick="showStorePopMaker(this)">
							<label for="ck_{a_scode}">{a_company}</label>	
						</span>
						<div class="addrArea">
							<p class="addr"><em class="hide">주소</em>{a_address_2}</p>
							<p class="phone"><em class="hide">연락처</em><span>{a_tel_1}</span><span>{a_tel_2}</span></p>
						</div>
					</li>
	</script>
	
			<!-- 크루 이야기 (L) -->
	<div class="popLayer layerS layerType03" id="crew_1">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop01.jpg" alt="목포 남악 DT점 김지웅 매니저"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">변화는 나의 자부심</h2>
					<p class="txt">처음엔 ‘그냥 아르바이트 하는 곳’이라는 생각으로 시작 하였던 것이 어느 것 16년을 함께 하고 있습니다. 맥도날드의 다양한 경험을 통해 항상 새로운 시도와 변화를 먼저 이끌어 나가는 기업이라는 것을 자연스럽게 느낄 수 있었습니다.</p>
					<p class="txt">맥드라이브, 맥딜리버리, 최근의 미래형 매장까지&middot;&middot;&middot;<br>멈추지 않는 다양한 시도들은 저에게 변화를 함께 만들어 가면서 최초라는 자부심을 갖고 일할 수 있게 해주었습니다.</p>
					<p class="txt">맥도날드의 변화는 곧 저의 즐거움이자 자부심이며,<br>이러한 새로운 변화를 계속해서 이끌어갈 것입니다.</p>
					<p class="crewInfo">목포 남악 DT점 김지웅 매니저</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_2">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop02.jpg" alt="경희대점 권영미 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">매일 열정적일 수 있는 나만의 비결</h2>
					<p class="txt">야간 근무를 하면서 밤낮이 바뀐 생활이 쉽진 않았습니다.<br>하지만 한 집안의 &lsquo;엄마&rsquo;와 &lsquo;아내&rsquo;로서, 그리고 맥도날드에<br>찾아오는 모든 고객 분들의 &lsquo;이웃&rsquo;과 &lsquo;친구&rsquo;로서 균형을<br>잃지 않기 위해 더 열심히 일했습니다.</p>
					<p class="txt">누구보다 더 변화하는 시스템을 긍정적이고 빠르게 받아들이려<br>노력하여, 어느새 저는 매장의 맏언니로 자리할 수 있었습니다.<br>함께 일하는 크루들도 언제나 열정적인 저의 모습을 통해<br>힘을 얻고 함께 변화하며 성장하고 있습니다.</p>
					<p class="txt">오늘 밤에도 나, 그리고 맥도날드를 찾아 주시는<br>고객 분들을 위해 더 열정적으로 일하려 합니다.</p>
					<p class="crewInfo">경희대점 권영미 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_3">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop03.jpg" alt="미아역점 이지혁 라이더"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">행복을 배달하는 사람으로.</h2>
					<p class="txt">제가 어떤 마음으로 일하느냐에 따라 고객 분들이 느끼는 게<br>다를거라 생각했습니다. 돈을 벌기 위해서, 어쩔 수 없이 해야하니까 하는 것 보단 스스로 가치 있고 &ldquo;행복을 전달하는 일이다.&rdquo;라고 생각하는 태도를 갖기로 마음 먹었습니다.</p>
					<p class="txt">그러자 전보다 감사한 마음으로 일할 수 있었고, <br>그 마음이 어느 정도 고객 분들에게 전달 되어지고 있다고 생각합니다.</p>
					<p class="txt">그렇게 감사하며 유쾌하게 일을 하고 있고,<br>더 많은 행복을 전달할 수 있도록 노력할 것 입니다</p>
					<p class="crewInfo">미아역점 이지혁 라이더</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_4">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop04.jpg" alt="석촌역점 이나라 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">맥도날드를 넘어, 나 자신의 변화까지</h2>
					<p class="txt">올 해, 고객 분들과 직접 접할 일이 더욱 많은 &lsquo;서비스 리더&rsquo;라는 직책을 맡게 되면서 저에게 고객과의 소통은 중요한 일이 되었습니다. 처음엔 낯설고 힘들었습니다.<br>하지만 고객 분들에게 저희 매장의 직원들이 친절하다는 칭찬을 듣고 싶은 욕심이 점점 생겼습니다.</p>
					<p class="txt">그렇게 마음 먹은 뒤로부터 웃는 얼굴로 일하여 노력하기 시작했고, 그러자 일이 즐겁게 느껴졌습니다. <br> 그런 것을 고객 분들도 알아주시고, 함께 웃는 얼굴로 마주해주시니 제 삶까지 행복해졌습니다.</p>
					<p class="txt">처음에는 작은 욕심으로 시작한 일이<br>맥도날드의 변화를 넘어, 나 자신의 변화까지 가져왔습니다.</p>
					<p class="crewInfo">석촌역점 이나라 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
	
		<script type="text/javascript">
	$(function()
		{
		
		});
	</script>	
</body>
</html>

<%@ include file = "footer.jsp"%>
