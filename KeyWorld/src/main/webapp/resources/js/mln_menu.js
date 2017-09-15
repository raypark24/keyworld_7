  "use strict";
  (function($)
  {
    $.fn.mln_menu = function(opcoes)
    {
      return this.each (function(i,v)
      {
        //HTML
        var menu = '<section id="menu_left">';
        menu += '<h3 id="left_menu" class="icon-menu"></h3>';
        menu += '<ul>';
        $(opcoes.itens).each(function( index, element )
        {
          menu += '<li><a href="'+opcoes.hrefs[index]+'"><i class="'+opcoes.icons[index]+'"></i> '+opcoes.itens[index]+'</a></li>';
        });
        menu += '</ul>';
        menu += '</section>';
        $('body').prepend(menu);

        //CSS
        var css = '<style type="text/css">';
        css += '.hide{display: none !important;}';
        css += '.show{display: block !important;}';
        css += 'section#menu_left #left_menu{ position: fixed; top: 0px; left: 0px; width: 50px; height: 50px; box-shadow: #808285 2px 3px 4px; background-color: '+opcoes.background+'; color: '+opcoes.color+'; cursor: pointer; -webkit-transition: 0.4s ease left; -moz-transition: 0.4s ease left; transition: 0.4s ease left;}';
        css += 'section#menu_left #left_menu.left_open{ left: 250px;}';
        css += 'section#menu_left h3:before{ font-size: 25px; margin: 12px; }';
        css += 'section#menu_left ul{ position: fixed; padding-top: 0px; top: 0px; left: -250px; width: 250px; box-shadow: #808285 2px 3px 4px; background-color: '+opcoes.background+'; -webkit-transition: 0.4s ease left; -moz-transition: 0.4s ease left; transition: 0.4s ease left;}';
        css += 'section#menu_left ul.left_open{ left: 0px;}';
        css += 'section#menu_left ul li{ float:left; width: 100%; color: '+opcoes.color+'; background-color: '+opcoes.background+'; -webkit-transition: 0.4s ease all; -moz-transition: 0.4s ease all; transition: 0.4s ease all;}';
        //css += 'section#menu_left ul li.logo_menu{ background-color: #fff; color: #808285; padding: 24px 12px;}';
        css += 'section#menu_left ul li a{ float:left; width: 100%; color: '+opcoes.color+'; padding: 12px; -webkit-transition: 0.4s ease all; -moz-transition: 0.4s ease all; transition: 0.4s ease all;}';
        css += 'section#menu_left ul li:hover{ background-color: '+opcoes.hoverbackground+'; }';
        css += 'section#menu_left ul li:hover a{ color: '+opcoes.hovercolor+'; }';
        css += '</style>';
        $('body').prepend(css);

        //JS
  			function mln_menu_resize()
  			{
        	$('#menu_left ul').css('height', $(window).height() );
        }
        $(window).resize(function()
  	    { 
  	      mln_menu_resize();
  	    });
  	    mln_menu_resize();
              
        $('#left_menu').click(function()
        {
          if( $('#menu_left ul').hasClass('left_open') )
          {
            $('#menu_left ul').removeClass('left_open');
            $('#menu_left #left_menu').removeClass('left_open');
          }
          else
          {
          	$('#menu_left ul').addClass('left_open');
          	$('#menu_left #left_menu').addClass('left_open');
          }
        });

		  });
    }
  })( jQuery );