/**************************************************************************
2020-08-18 JS TEST
****************************************************************************/

/**
	interface 
	
	�˾�â
	commonJs.popup.image.show( target );		�̹������� target => $('. , #) jQuery�����ͷ� Ÿ���� ���� ����
	commonJs.popup.image.hide( target );		�̹������� target => $('. , #) jQuery�����ͷ� Ÿ���� ���� ����
	commonJs.popup.basic.show( target );		�Ϲ����� target => $('. , #) jQuery�����ͷ� Ÿ���� ���� ����
	commonJs.popup.basic.hide( target );		�Ϲ����� target => $('. , #) jQuery�����ͷ� Ÿ���� ���� ����

	�����̵� ���
	commonJs.swiperSetup( target );				target : $() jquery������ �̿� ex) prvSwiper ����

	ž�޴�
	commonJs.menu.TopActive(idx(0~3))			menu : 0 , store : 1 , what's news : 2 , story : 3 ������������ �޴� ������ ���缭 Ȱ��ȭ 
	commonJs.menu.TopDeActive()					Ȱ��ȭ ����


	������ ����Ʈ
										������ ����Ʈ�� ��� .selectWrap=>select ������Ʈ�� �ִ� ��� �ش� �ϸ� ����Ʈ�� �ɼǰ��� ���� ���� commonJs.select.update ������ ����Ʈ�� �ݿ� �˴ϴ�.
	commonJs.select.update( target )	.selectWrap => select  selectWrap �Ʒ��� ������ ����Ʈ �鿡 �ش� �ϸ� select �� option ���� �߰��� ������Ʈ��
										commonJs.select.update( target ) �� ������ ����Ʈ�� ������Ʈ �ϸ� (target => jquery ������ )
	$('#test1').on('select',function(){		����Ʈ�� ���ýÿ� select �̺�Ʈ�� ��� ���� �ֽ��ϴ�.
		var se = $(this).find('option:selected');
		console.log('xxx',se.val() , ' : ', se.index() );
	})
**/
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

			//���ټ�
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
			// 		}).text('���� ����');
			// 	}else{
			// 		t.attr({
			// 			'aria-selected':true,
			// 			'aria-expanded':true
			// 		}).text('���� �ݱ�');
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
			//�ٷΰ���
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
				// �ٸ� Ÿ��
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
						$(this).text('���');
					}else{
						$(this).addClass('pause');
						$(this).text('����');
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
				
				/* 2020.6.4 KV ���� �߰� */
				var $active = $('.swiper-slide-active');
				if( $active.hasClass('video')){
					var video = $active.find('video');
					
					// ���� �ð��� ���� ���� �ʿ�
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
				/* 2020.6.4 KV ���� �߰� �� */
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
				//���ټ� �±�
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
				
				//���ټ��±�
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
				//���ټ� �±�
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
		//console.log("selectMenu");
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
					
					// ����
					// e = t("<label>").appendTo(this.button),
					// this._addClass(e, "ui-selectmenu-icon", "ui-icon " + this.options.icons.button),
					// ����

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
					var w = parseInt(select.attr('style').replace('width:','250px'));
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
