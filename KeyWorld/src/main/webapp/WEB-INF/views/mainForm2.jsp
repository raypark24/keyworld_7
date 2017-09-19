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
    zoom: 1;
}

button.Zebra_DatePicker_Icon_Disabled {
background-image: url('resources/css/calendar-disabled.png');

}

/* don't set vertical margins! */

button.Zebra_DatePicker_Icon {
margin: 0 0 0 3px;

}

button.Zebra_DatePicker_Icon_Inside {
margin: 0 3px 0 0;

}

.we-pp-wrapper{
	background-color : rgba(255,255,255,0.1) !important;
}
.we-pp{
	
}
.we-pp-wrapper:hover{
	background-color : rgba(255,255,255,1) !important;
}
b.bluetext{
	color : blue;
}
b.blacktext{
	color : black;
}
b.redtext{
	color : red;
}
.a_rank{
	color : white !important;
}
.a_realrank{
	color : white !important;
}
.a_rank:hover{
	color : #fed136 !important;
}
.a_realrank:hover{
	color : #fed136 !important;
}
.title_a{
	color : white !important;
}


/*#datep{
    display: block;
    
    }*/

</style>

  <body onload="initialize()" id="page-top">
      
        <div id = "title2">Key<span id = "title1">World</span></div>

       <header class="masthead" id="top" >
           
            <ul id="main-menu" class="sm sm-simple">
            
                <li><a href="#" ><div id = "nation">Nation</div></a>
                <ul class = 'nation'>
                <li><a href="#">Asia</a>
                    <ul>
                        <li><a href="#"><input type="radio" name="radio1" id="Korea" value="216"><label for = "Korea">Korea</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="Japan" value="222"><label for = "Japan">Japan</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="China" value="39"><label for = "China">China</label></a></li>
                         <li><a href="#"><input type="radio" name="radio1" id="Singapore" value="138"><label for = "Singapore">Singapore</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="Philippines" value="159"><label for = "Philippines">Philippines</label></a></li>
                    </ul>
                </li>
                <li><a href="#">America</a>
                    <ul>
                        <li><a href="#"><input type="radio" name="radio1" id="USA" value="104"><label for = "USA">USA</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="Canada" value="33"><label for = "Canada">Canada</label></a></li>
                    </ul>
                </li>
                <li><a href="#">Oceania</a>
                    <ul>
                <li><a href="#"><input type="radio" name="radio1" id="radio1" value="12"><label for = "Australia">Australia</label></a></li>
                <li><a href="#"><input type="radio" name="radio1" id="radio1" value="174"><label for = "New Zealand">New Zealand</label></a></li>
                
                
                </ul>
                    </li>
                <li><a href="#">Europe</a>
                      <ul>
                <li><a href="#"><input type="radio" name="radio1" id="England" value="105"><label for = "England">England</label></a></li>
               
                
                </ul>
                    </li>
                </ul> 
                    <li><a href="#" ><div id = "broadcast">Broadcast</div></a>
               <ul id = "broadcastList">
               <!-- 
               <li><a href="#"><input type="radio" name="radio2" id="'+item.broadcastName+'"value="'+item.broadcastNum+'"><label for = "'+ item.broadcastName +'">'+ item.broadcastName + '</label></a></li>
               -->
               </ul>
                </li>
                
                <li ><a href="#" ><div id = "division">Division</div></a>
               <ul id = "divisionList">
               
               </ul>
                
                
                </li>

                <li><a href="#">Date</a>
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
	  
	  
     var earth = new WE.map('earth_div', {'tilting':false, 'sky': true, 'atmosphere': true});
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
  		<c:if test="${keyword.point eq null}">
			WE.marker(["${keyword.latitude}", "${keyword.longitude}"],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:30px;'><b class='blacktext' id='${keyword.keyword_num}'>"+"${keyword.keyword}"+"<b></span>", {maxWidth: 160, closeButton: true}).openPopup();
		</c:if>
      	<c:if test="${keyword.point > 0}">
      		WE.marker(["${keyword.latitude}", "${keyword.longitude}"],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:30px;'><b class='bluetext' id='${keyword.keyword_num}'>"+"${keyword.keyword}"+"<b></span>", {maxWidth: 160, closeButton: true}).openPopup();
      	</c:if>
      	<c:if test="${keyword.point < 0}">
  			WE.marker(["${keyword.latitude}", "${keyword.longitude}"],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:30px;'><b class='redtext' id='${keyword.keyword_num}'>"+"${keyword.keyword}"+"<b></span>", {maxWidth: 160, closeButton: true}).openPopup();
  		</c:if>
      </c:forEach>
      
      
      


      //var markerCustom = WE.marker([50, -20], '/img/logo-webglearth-white-100.png', 100, 24).addTo(earth);

      var options = {color: '#ff0', opacity: 1, fillColor: '#f00', fillOpacity: 0.1, weight: 2, editable: true };
      /*var polygonB = WE.polygon([[-70, -170], [51, 2.5], [50.5, 4.5]], options).addTo(earth);*/
      
      //earth.setView([48, 6], 5);
      $(".we-pm-icon").css("opacity", "0.7");
      
      $(".we-pp-tip").removeAttr("background");
      $(".we-pp-wrapper").removeAttr("background");
      $(".we-pp").mouseover(function(){
    	 $(".we-pp-wrapper").css('z-index','200000');
    	 $(".we-pp-content").css('z-index','200000');
    	 $(this).css('z-index','200000');
      });
      
      $(".we-pp-wrapper").click(function(){
    	  $("#articleTable").html("<tr><th>번 호</th><th>기사 제목</th></tr>");
    	  var text = $(this).children().children().children().first().attr("id");
    	  $.ajax({
     		 url: 'rkeywordSelect',
     		 type: 'POST',
     		 data: {
     			 keyword_num : text
     		 },
     		 dataType: 'json',
     		 success : function(data){
    			 	$.each(data, function(idx, val) {
    				 	$("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
    			 	});
     		 },
     		 error : function(){
     			 alert("에러!!");
     		 }
     	  });
      });
      
      $(".we-pp").mouseout(function(){
    	 $(".we-pp-wrapper").css('z-index','0');
    	 $(".we-pp-content").css('z-index','0');
    	 $(this).css('z-index','0');
      });
      
      $(".a_rank").click(function(){
    	  $("#articleTable").html("<tr><th>번 호</th><th>기사 제목</th></tr>");
    	  $.ajax({
    		 url: 'rkeywordSelect',
    		 type: 'POST',
    		 data: {
    			 keyword_num : $(this).attr('id')
    		 },
    		 dataType: 'json',
    		 success : function(data){
   			 	$.each(data, function(idx, val) {
   				 	$("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td class='title_td'><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
   			 	});
    		 },
    		 error : function(){
    			 alert("에러!!");
    		 }
    	  });
    	  //$(".we-pp").css("display","None");

      });
  }
  
  function articleDetail(inputUrl,inputDivision_num){
	  
	  var url = inputUrl;
	  var division_num = inputDivision_num;
	  // 파이썬 통신 후 html 태그들 가져와서 뿌리기.
	   $.ajax({
    		 url: 'articleDetail',
    		 type: 'POST',
    		 data: {
    			 url : url,
    			 division_num : division_num
    		 },
    		 dataType: 'text',
    		 success : function(result){
    			 var panel5 = $.jsPanel({
    		          paneltype:   'modal',
    		           position:    {my: "center", at: "center"},
    		           contentOverflow: 'scroll',
    		           theme: 'black filled',
    		           contentSize: {width: 1000, height: 600},
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
    		           
    		           show: "jsPanelFadeIn",  
    		           headerTitle: "Article",
    		           border:   "1px solid darkgray",
    		           content: function(){
    		               $(this).css('background-color','rgba(0,0,0,' + 0.8 + ')');
    		               $(this).css('z-index','120000');
    		               return result;
    		           },
    		           headerControls: {
    		           
    		                controls : 'all',
    		                   minimize : 'remove'
    		               
    		           },
    		           dragit: {
    		               disabled: false
    		           },
    		           callback: function () {
    		               this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)","z-index":"120000", fontStyle: "italic" });
    		    
    		               this.content.css({"font-size": "16px","padding": "15px","z-index":"120000"});
    		           }
    		       });
    		 },
    		 error : function(){
    			 alert("에러!!");
    		 }
    	}); 
	  
	  
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
         
         var now = new Date();
          var year= now.getFullYear();
          var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
          var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
          var chan_val = year + '-' + mon + '-' + day;

        $('#datepicker-example7-start').Zebra_DatePicker({
        direction: false ,
        default_position: 'below',
        pair: $('#datepicker-example7-end')
    });
        
        $('#datepicker-example7-end').Zebra_DatePicker({
        default_position: 'below',
        direction: true ,
        direction: [1, chan_val]
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
                return "<c:forEach items='${realKeywordList}' var='keyword' varStatus='stat' begin='0'><a href='#' class='a_realrank'>${stat.count}위 : ${keyword.keyword}</a><br/></c:forEach>";
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
                //return "<c:forEach items='${rankingList}' var='keyword' varStatus='stat'>${keyword.keyword} <br/></c:forEach>";
                return "<c:forEach items='${rankingList}' var='keyword' varStatus='stat' begin='0'><a href='#' class='a_rank' id='${keyword.keyword_num}'>${stat.count}위 : ${keyword.keyword}</a><br/></c:forEach>";
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
                return "<div id = 'articleList'><table id = 'articleTable'><tr><th>번 호</th><th>기사 제목</th></tr></table></div>";
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
	   $('.nation > li > ul> li > a').on('click', function(){
        
         if($('input:radio[name=radio1]').is(':checked')){
            
             var checked = $('input:radio[name=radio1]:checked').val();
             var nation = $('input:radio[name=radio1]:checked').attr('id');
             alert(nation);
             $("div#nation").empty();
             $("div#nation").append(nation);
         
          
             $.ajax({
            			url : "blist"
            			, type : "get"
            			, data : "nationNum=" + checked
            			, success : bOutput
            			, error : function(){
            				alert("error")
            			}
            	}); 
             
             $.ajax({
        			url : "dlist"
        			, type : "get"
        			, data : "nationNum=" + checked
        			, success : dOutput
        			, error : function(){
        				alert("error")
        			}
        	}); 
   
       
         }       
     });
     //disable을 쓸 필요없이 ul안의 list가 전혀 없다가, db를 통해, 불러온다.
    
     
     
		
	
	
	
	$('#main-menu').smartmenus({
		mainMenuSubOffsetX: 1,
		subMenusSubOffsetX: -8,
		subMenusSubOffsetY: 0,
     hideTimeout:500
	});
 
 
   
});



function bOutput(resp){//데이터를 받는 것이 성공하면 함수를 실행한다. 
	var blist = "";
	
	$.each(resp, function(index,item){
		
		blist += '<li><a href="#" onclick="broadcast();"><input type="radio" name="radio2" id="'+item.broadcastName+'"value="'+item.broadcastNum+'"><label for = "'+ item.broadcastName +'" >'+ item.broadcastName + '</label></a></li>';
	});
	$("#broadcastList").empty();
	$("#broadcastList").append(blist);
	
	
	
	
	
};

function dOutput(resp){//데이터를 받는 것이 성공하면 함수를 실행한다. 
	
	var dlist = "";
	
	$.each(resp, function(index,item){
		
		dlist += '<li><a href="#" onclick="division();"><input type="radio" name="radio3" id="'+item.divisionName+'"value="'+item.divisionNum+'"><label for = "'+ item.divisionName +'">'+ item.divisionName + '</label></a></li>';
	});
	$("#divisionList").empty();
	$("#divisionList").append(dlist);
	
	
	
};

function division(){
 alert("dddd")
if($('input:radio[name=radio3]').is(':checked')){
  
  var checked = $('input:radio[name=radio3]:checked').attr("id");
  
  $("#division").empty();
  $("#division").append(checked);
}       
};


function broadcast(){
	 alert("dddd")
if($('input:radio[name=radio2]').is(':checked')){
	 
    var checked = $('input:radio[name=radio2]:checked').attr("id");
    alert(checked)
    $("#broadcast").empty();
    $("#broadcast").append(checked);
}       
};
</script>
     

</body>
</html>