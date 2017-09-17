<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>KeyWorld</title>
 


<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<!--<link href="css/agency.min.css" rel="stylesheet">-->
  
 
   <!-- loading jsPanel css -->
  <link rel="stylesheet" href="resources/source/jquery.jspanel.css">
  <link rel="stylesheet" href="resources/css/agency.css" type='text/css' />
  
  <link rel="stylesheet" href="resources/font/css/fontello.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/style.css" type='text/css' />
  
  <!-- SmartMenus core CSS (required) -->
  <link href="resources/css/sm-core-css.css" rel="stylesheet" type="text/css" />

  <!-- "sm-simple" menu theme (optional, you can use your own CSS, too) -->
  <link href="resources/css/sm-simple.css" rel="stylesheet" type="text/css" />
  <link href="resources/css/zebra_datepicker.css" rel="stylesheet" type="text/css" />

   
<title>Insert title here</title>
</head>

<style>

/*body, html {
  height: 100%;
}*/


/*[class*=underlay] {
  left: 0;
  min-height: 100%;
  min-width: 100%;
  position: fixed;
  top: 0;
}
.underlay-photo {
  animation: hue-rotate 6s infinite;
  background: url('https://31.media.tumblr.com/41c01e3f366d61793e5a3df70e46b462/tumblr_n4vc8sDHsd1st5lhmo1_1280.jpg');
  background-size: cover;
  -webkit-filter: grayscale(30%);
  z-index: -1;
}
.underlay-black {
  background: rgba(0,0,0,0.7);
  z-index: -1;
}*/

/*@keyframes hue-rotate {
  from {
    -webkit-filter: grayscale(30%) hue-rotate(0deg);
  }
  to {
    -webkit-filter: grayscale(30%) hue-rotate(360deg);
  }
}    */
    
    
    
#main-menu {
    position:relative;
    top:0;
        left: 300px;
    z-index:9999;
    width:auto;
    
}
#main-menu ul {
    width:12em; 
}    
#title2{
    font-size: 2rem;
    position: absolute;
    left:100px;
    top:20px;
    z-index:9;


}
    
#title1{
   
    color: white;
}
body {
	overflow-x: hidden;
	font-family: 'Roboto Slab', 'Helvetica Neue', Helvetica, Arial, sans-serif;
}
section#menu_left #left_menu {z-index:200;}
section#menu_left ul{z-index:200;}
#earth_div{
    position:absolute;
    top:0px;
    left:0px;

}
#main-menu{
    position:absolute;
    top:0px;
    left:815px;
    width: 100%

}
    #upbtn{
        position: relative;
        left: 130px;
        
    }
    .ddli{
        width: 170px;
    }
button.Zebra_DatePicker_Icon2 {
    position: absolute;
    display: inline-block;
    top:30px;
    left:120px;
    width: 16px;
    height: 16px;
    background: url('resources/css/calendar.png');
    text-indent: -9000px;
    border: none;
    cursor: pointer;
    padding: 0;
    line-height: 0;
    vertical-align: top;
    display: inline;
    zoom: 1
}

button.Zebra_DatePicker_Icon_Disabled {
background-image: url('resources/css/calendar-disabled.png')

}

/* don't set vertical margins! */

button.Zebra_DatePicker_Icon {
margin: 0 0 0 3px

}

button.Zebra_DatePicker_Icon_Inside {
margin: 0 3px 0 0

}

.we-pp-wrapper{
	background-color : rgba(255,255,255,0.2) !important;
}
b{
	color : red;
}

/*#datep{
    display: block;
    
    }*/

</style>

  <body onload="initialize()" id="page-top">
      
        <div id = "title2">Key<span id = "title1">World</span></div>

       <header class="masthead" id="top" >
           
            <ul id="main-menu" class="sm sm-simple">
            
                <li><a href="#" class = "topli">Nation</a>
                <ul>
                <li><a href="#">Asia</a>
                    <ul>
                        <li><a href="#">Korea</a></li>
                        <li><a href="#">Japan</a></li>
                        <li><a href="#">China</a></li>
                    </ul>
                </li>
                <li><a href="#">Noth America</a>
                    <ul>
                        <li><a href="#">United States of America</a></li>
                        <li><a href="#">Mexico</a></li>
                        <li><a href="#">Canada</a></li>
                    </ul>
                </li>
                <li><a href="#">Africa</a>
                    <ul>
                <li><a href="#">A</a></li>
                <li><a href="#">B</a></li>
                <li><a href="#">C</a></li>
                
                </ul>
                    </li>
                <li><a href="#">Europe</a>
                      <ul>
                <li><a href="#">A</a></li>
                <li><a href="#">B</a></li>
                <li><a href="#">C</a></li>
                
                </ul>
                    </li>
                </ul> 
                    <li><a href="#" class = "topli">Publisher</a>
                <ul>
                <li><a href="#">Jungang</a></li>
                <li><a href="#">Chosun</a></li>
                
                </ul>
                </li>
                
                <li><a href="#" class = "topli">Category</a>
                <ul>
                <li><a href="#">domestic</a></li>
                <li><a href="#">world</a></li>
                <li><a href="#">economy</a></li>
                <li><a href="#">entertainment</a></li>
                <li><a href="#">sports</a></li>
                <li><a href="#">computer</a></li>
                <li><a href="#">science</a></li>
                <li><a href="#">local</a></li>
                </ul>
                
                
                </li>

                <li><a href="#"  id = dateli>Date</a>
                <ul id = "datep">
                    
                    <li class = "ddli">
                        
                        <a href="#" >From : <br><input id="datepicker-example7-start" type="text" style = "width: 120px">
                        <button class="Zebra_DatePicker_Icon2" id = "dbtn1" ></button>
                        </a>
                        
                         </li>
                    <li class = "ddli"><a href="#" >To : <br><input id="datepicker-example7-end" type="text" style = "width: 120px"><button class="Zebra_DatePicker_Icon2" id = "dbtn2"></button></a></li>
                    <!--<li><button id = "upbtn"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i></button></li>-->
                
                </ul>
                </li>
                <li>
                <form class="form-inline my-2 my-lg-0 mr-lg-2">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for..."/>
                <span class="input-group-btn">
                  <button class="btn btn-primary" type="button">
                    <i class="fa fa-search"></i>
                  </button>
                </span>
              </div>
            </form>
</li>
                

                
</ul>
            
             <div id="earth_div" style = "color: black">
             
         
             
            </div>
     
   
    </header>
    

    <!-- Services -->
  
    <!-- Bootstrap core JavaScript -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/popper/popper.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
      
    
    <!-- Contact form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>
    

    <!-- Custom scripts for this template -->
    <script src="resources/js/agency.min.js"></script>
      
   
    <script src="resources/js/mln_menu.js"></script>


      
       <script src="http://www.webglearth.com/v2/api.js"></script>
  <script>
  function initialize() {
	 
     var earth = new WE.map('earth_div', {tilting:false, sky: true, atmosphere: true});
      var natural = WE.tileLayer('http://data.webglearth.com/natural-earth-color/{z}/{x}/{y}.jpg', {
          tileSize: 256,
          tms: true
        });
        natural.addTo(earth);
      WE.tileLayer('http://tile.stamen.com/toner/{z}/{x}/{y}.png',{
    	  attribution: 'Map tiles by Stamen Design, under CC BY 3.0. Data by OpenStreetMap, under CC BY SA.',
          opacity: 0.7
      }).addTo(earth);
     

     
      <c:forEach items="${keyList}" var="keyword">
      	WE.marker(["${keyword.latitude}", "${keyword.longitude}"],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:30px;'><b>"+"${keyword.keyword}"+"<b></span>", {maxWidth: 100, closeButton: true}).openPopup();
      	
      </c:forEach>
      
      var marker = WE.marker([51.5, -0.09],'', 15, 15).addTo(earth);
      var marker0 = WE.marker([51, -0.09],'resources/css/marker00.png', 10, 10).addTo(earth);
      var marker1 = WE.marker([52, -0.09],'resources/css/marker01.png', 10, 10).addTo(earth);
      var marker2 = WE.marker([53, -0.09],'resources/css/marker02.png', 10, 10).addTo(earth);
      var marker3 = WE.marker([54, -0.09],'resources/css/marker03.png', 10, 10).addTo(earth);
      var marker4 = WE.marker([55, -0.09],'resources/css/marker04.png', 10, 10).addTo(earth);
      var marker5 = WE.marker([56, -0.09],'resources/css/marker05.png', 10, 10).addTo(earth);
      var marker6 = WE.marker([57, -0.09],'resources/css/marker06.png', 10, 10).addTo(earth);
      var marker7 = WE.marker([58, -0.09],'resources/css/marker07.png', 10, 10).addTo(earth);
      var marker8 = WE.marker([59, -0.09],'resources/css/marker08.png', 10, 10).addTo(earth);
      var marker9 = WE.marker([60, -0.09],'resources/css/marker09.png', 10, 10).addTo(earth);
      
      marker.bindPopup("<b>영국</b><br>냉장고 폭발<br />", {maxWidth: 150, closeButton: true}).openPopup();

     
      marker2.bindPopup("<b>Cairo</b><br>Yay, you found me!", {maxWidth: 20, closeButton: false});

      //var markerCustom = WE.marker([50, -20], '/img/logo-webglearth-white-100.png', 100, 24).addTo(earth);

      var options = {color: '#ff0', opacity: 1, fillColor: '#f00', fillOpacity: 0.1, weight: 2, editable: true };
      /*var polygonB = WE.polygon([[-70, -170], [51, 2.5], [50.5, 4.5]], options).addTo(earth);*/
      
      //earth.setView([48, 6], 5);
      $(".we-pm-icon").css("opacity", "0.7");
      
      $(".we-pp-tip").removeAttr("background");
      $(".we-pp-wrapper").removeAttr("background");
      
    }
    </script>  
            <!-- loading jsPanel javascript -->
    <script src="resources/source/jquery.jspanel-compiled.js"></script>
    <script src="resources/vendor/jquery-ui-touch/jquery.ui.touch-punch.min.js"></script>
      <script type="text/javascript" src="resources/js/zebra_datepicker.min.js"></script>
    <script>
        var datep1
        var datep2
        
        
      $(function(){
    	 
          
        $('#datepicker-example7-start').Zebra_DatePicker({
        direction: true,
        default_position: 'below',
        pair: $('#datepicker-example7-end')
    });
        
        $('#datepicker-example7-end').Zebra_DatePicker({
        default_position: 'below',
        direction: 1
    });
          
    
          
   
    $('#datepicker-example7-start').on("click", function(){
        $('.Zebra_DatePicker.dp_visible').css({"position": "absolute" ,"top": "167px","left": "1168px"}); 
    });
    $('#datepicker-example7-end').on("click", function(){
        $('.Zebra_DatePicker.dp_visible').css({"position": "absolute" ,"top": "167px","left": "1168px"}); 
    });
    $('#dateli').hover(function(){
        
        $('#datep').css("display","block");
        
    })
    $(".dp_daypicker").on("click", function(){
        if($('#datepicker-example7-end').val().length != 0){
             if($('#datepicker-example7-start').val().length != 0){
                $('#datep').css("display","none");
             }
        }
    })
    $("#dateli").on("click", function(){
       
        $('#datep').css("display","none");
    })
    
          
          
            
          
        
   })//function
        
     
        
    </script>
    <script>
    $(function(){
            /*실시간 키워드*/
            var panel = $.jsPanel({
            position:    {my: "left-bottom", at: "left-bottom", offsetY: 10},
            theme: 'black filled',
            headerControls: {
                maximize: 'remove',
                close: 'remove'
            },
             dragit: {
        disable: true
    },
            contentSize: {width: 260, height: 300},
            headerTitle: "Realtime Ranking",
            border:   "1px solid darkgray",
            content: function(){
                $(this).css('background-color', 'rgba(0,0,0,' + 0.3 + ')');
                return "${realKeyword}";
            },
            callback: function () {
                this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", fontStyle: "italic" ,fontWeight: "bold"});
                this.content.css({"font-size": "16px","padding": "15px"});
            }
        });
        
        var panel2 = $.jsPanel({
            position:    {my: "left-top", at: "left-top", offsetY: 60},
            theme: 'black filled',
            contentSize: {width: 260, height: 300},
            headerControls: {
                maximize: 'remove',
                close: 'remove'
            },
                dragit: {
        disable: true
    },
            headerTitle: "Keyword Ranking",
            border:   "1px solid darkgray",
            content: function(){
                $(this).css('background-color', 'rgba(0,0,0,' + 0.3 + ')');
                return "<c:forEach items='${rankingList}' var='keyword' varStatus='stat'>${keyword.keyword} <br/></c:forEach>";
            },
            callback: function () {
                this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", fontStyle: "italic" ,fontWeight: "bold"});
                this.content.css({"font-size": "16px","padding": "15px"});
                
            }
        });
        
        var panel3 = $.jsPanel({
            position:    {my: "right-top", at: "right-top", offsetY: 85, offsetX: -10},
            theme: 'black filled',
            contentOverflow : 'scroll',
            contentSize: {width: 320, height: 700},
            headerTitle: "Article",
            headerControls: {
                maximize: 'remove',
                close: 'remove'
            },
                 dragit: {
        disable: true
    },
           
            content: function(){
                $(this).css('background-color', 'rgba(255,255,255,' + 0.1 + ')');
                return "${article}"
            },
             contentIframe: {
                width:  300,
                height: 700,
                src:    '/WEB-INF/views/home.jsp',
                name:   'myFrame',
                style:  {'border': '1px solid #000'}
            },
            callback: function () {
                this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", fontStyle: "italic" ,fontWeight: "bold"});
                this.content.css({"font-size": "16px","padding": "15px"});
                
            }
        });
        
        var panel4 = $.jsPanel({
            position:    {my: "right-top", at: "right-top", offsetY: 85 , offsetX :-15},
            contentOverflow: 'scroll',
            theme: 'black filled',
            contentSize: {width: 300, height: 500},
            headerToolbar: [
                {
                    item:     "<span class='fa fa-bars' style='cursor:pointer;'>",
                    event:    "click",
                    callback: function (event) {event.data.content.append("<p>You clicked on the menu ...</p>"); }
                },
                {
                    item:     "<span class='fa fa-cog' style='cursor:pointer;margin-left:5px;'>",
                    event:    "click",
                    callback: function (event) {event.data.content.append("<p>You clicked on the tools this time ...</p>"); }
                },
                {
                    item:     "<span class='fa fa-sign-in' style='cursor:pointer;margin-left:5px;'>",
                    event:    "click",
                    callback: function (event) {event.data.content.append("<p>Logout ...</p>"); }
                }
            ],
            headerControls: {
                maximize: 'remove',
                close: 'remove'
            },
                dragit: {
                disable: true
            },
            headerTitle: "Article",
            border:   "1px solid darkgray",
            content: function(){
                $(this).css('background-color', 'rgba(0,0,0,' + 0.3 + ')');
                return "   <div id = 'articleList'><table id = 'articleTable'><tr><th>번 호</th>  <th>기사 제목</th>  </tr><c:forEach items='${articleList}' var='article' varStatus='stat'><tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>${stat.count}</td> <td>${article.title}</td> </tr></c:forEach></table></div>";
            },
            callback: function () {
                this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", fontStyle: "italic" });
     
                this.content.css({"font-size": "16px","padding": "15px"});
                
            }
        });
        
/*    var arr = [
    {
        item:     "<div style='flex:1 1 auto;padding:6px 0 0 0;cursor:pointer;'>Don't have an account? Sign up here</div>",
        event:    jsPanel.evtStart,
        callback: function( event ) {
            event.stopPropagation();
            event.data.content.empty().append( "<p>The click happened at (" + event.pageX + ", " + event.pageY + ")</>" );
        }
    }
        ];
        
       $.jsPanel({
    paneltype:   'modal',
    headerTitle: 'LogIn',
    theme: 'black filled',
    contentSize: {width: 300, height: 200},
    show:        'animated fadeInDownBig',
    border:   "1px solid darkgray",
    content:     '<div class="input-group"><span class="input-group-addon" id="basic-addon1"><i class="fa fa-user" aria-hidden="true"></i></span><input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1"></div></br><div class="input-group"><span class="input-group-addon" id="basic-addon2"><i class="fa fa-lock" aria-hidden="true"></i></span><input type="text" class="form-control" placeholder="Password" aria-describedby="basic-addon1"></div></br><button type="button" style = "width : 100%;background-color:rgb(251,207,53);color:white" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Sign In</button>',
    footerToolbar: arr,
    callback:    function(panel){
        $("input:first", this).focus();
        $("button", this.content).click(function(){panel.close()});
        this.header.title.css({"font-size" : "19px","color":"rgb(251,207,53)", fontStyle: "italic" ,fontWeight: "bold"});
        this.content.css({"font-size": "16px","padding": "15px"});
        $(this).css('background-color', 'rgba(0,0,0,' + 0.3 + ')');
    }
});*/
 
        
    })  
    </script>
      <script type="text/javascript">
			$(document).ready(function()
			{
			    //call the plugin
			    $('body').mln_menu(
			    {
			    	'background' : '#333',
			    	'color' : '#fff',
			    	'hoverbackground' : '#fff',
			    	'hovercolor' : '#808285',
			    	'itens' : ['Home', 'User', 'Board', 'Logout'],
			    	'hrefs' : ['#home', '#user', '#Board', '#logout'],
			    	'icons' : ['fa fa-home', 'fa fa-user', 'fa fa-pencil-square-o', 'icon-logout']
			    });
                
               
             $("#menu_left > ul > li > a").on("click", function(){
                
                 var href = $(this).attr("href");
                 if(href == '#Board'){
                     var board = $.jsPanel({
                        position:    {my: "center", at: "center", offsetY: 50, offsetX: 10},
                        theme: 'black filled',
                        contentSize: {width: 1200, height: 600},
                        headerTitle: "Board",
                    
                        //border:   "1px solid darkgray",
                        content: function(){
                            $(this).css('background-color', 'rgba(255,255,255,' + 1 + ')');
                            /*return "<p style='padding:10px;'>1. 일본 지진</p>";*/
                        },
                         contentIframe: {
                            width:  1200,
                            height: 600,
                            src:    'file:///C:/Users/user/Downloads/startbootstrap-agency-gh-pages/startbootstrap-agency-gh-pages/index.html',
                            name:   'myFrame',
                            style:  {'border': '1px solid #000'}
                        },
                        callback: function () {
                            this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", fontStyle: "italic" ,fontWeight: "bold"});
                            this.content.css({"font-size": "16px","padding": "15px"});

                        }
                    });
                     
                 }
             
          })
                
			});
          
          
          
         
            
          
        
		</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<!-- jQuery -->


<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="resources/js/jquery.smartmenus.js"></script>

<!-- SmartMenus jQuery init -->
<script type="text/javascript">
	$(function() {
		$('#main-menu').smartmenus({
			mainMenuSubOffsetX: 1,
			subMenusSubOffsetX: -8,
			subMenusSubOffsetY: 0,
            hideTimeout:500
		});
        
        
          
	});
</script>
     

</body>
</html>