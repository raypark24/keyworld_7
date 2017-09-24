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
<link href="resources/css/animate.css" rel="stylesheet" type="text/css" />
   
<title>Insert title here</title>
</head>

<style>
#clear1, #clear2, #clear3{
	width : 100%;
	height : 100%;
	
}
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
    z-index:200001;
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
    left:670px;
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
   background-color : rgba(255,255,255,0.3) !important;
   width : fit-content !important;
    margin: auto; 
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
   color : #99FFCC !important;
}
.a_realrank{
   color : #99FFCC !important;
}
.a_rank:hover, .title_a:hover{
   color : #fed136 !important;
}
.a_realrank:hover{
   color : #fed136 !important;
}
.title_a{
   color : #99FFCC !important;
}
.title_a_real{
   color : #99FFCC !important;
}
/*YSH*/
div.flags{
   white-space: nowrap;
}

div.real_menu{
   float:left;
    margin: 0 auto;
	margin-right: 0;
	margin-left: 0;
	padding: 0;
}

.selected_nation{
	height: 30px;
	width: 40px;
	/* border-bottom: 4px solid white; */
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
                <li><input type = "button" value = "Clear" class = "clearbtn"  id = "clear1" style = "display:none;"></li>
                <li><a href="#">Asia</a>
                    <ul>
                        <li><a href="#"><input type="radio" name="radio1" id="Korea" class="Filter" value="216"><label for = "Korea">Korea</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="Japan" class="Filter" value="222"><label for = "Japan">Japan</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="China" class="Filter" value="39"><label for = "China">China</label></a></li>
                         <li><a href="#"><input type="radio" name="radio1" id="Singapore" class="Filter" value="138"><label for = "Singapore">Singapore</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="Philippines" class="Filter" value="159"><label for = "Philippines">Philippines</label></a></li>
                    </ul>
                </li>
                <li><a href="#">America</a>
                    <ul>
                        <li><a href="#"><input type="radio" name="radio1" id="USA" class="Filter" value="104"><label for = "USA">USA</label></a></li>
                        <li><a href="#"><input type="radio" name="radio1" id="Canada" class="Filter" value="33"><label for = "Canada">Canada</label></a></li>
                    </ul>
                </li>
                <li><a href="#">Oceania</a>
                    <ul>
                <li><a href="#"><input type="radio" name="radio1" id="radio1" class="Filter" value="12"><label for = "Australia">Australia</label></a></li>
                <li><a href="#"><input type="radio" name="radio1" id="radio1" class="Filter" value="174"><label for = "New Zealand">New Zealand</label></a></li>
                
                
                </ul>
                    </li>
                <li><a href="#">Europe</a>
                      <ul>
                <li><a href="#"><input type="radio" name="radio1" id="England" class="Filter" value="105"><label for = "England">England</label></a></li>
               
                
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
                  <button class="btn btn-primary" onclick="keywordSearch();" type="button">
                    <i class="fa fa-search"></i>
                  </button>
                </span>
              </div>
            </form>
</li>
<li>
<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style = "background-color :rgb(251,207,53);width : 115px;">
    <span id = "language">Language</span>
    <span class="caret"></span>
  </button>
  <!-- 언어선택부분 : ul태그 였으나, 기존 메뉴와 충돌로 인해 임시로 ol태그로 변경하여 해결. -->
  <ol class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li id = "Korean" role="presentation" style = "width:100px"><a role="menuitem" tabindex="-1" href="#">Korean</a></li>
    <li id = "English" role="presentation" style = "width:100px"><a role="menuitem" tabindex="-1" href="#">English</a></li>
    <li id = "Japanese" role="presentation" style = "width:100px"><a role="menuitem" tabindex="-1" href="#">Japanese</a></li>
    <li id = "Chinese" role="presentation" style = "width:100px"><a role="menuitem" tabindex="-1" href="#">Chinese</a></li>
  </ol> 
</div>
</li>                       
</ul>
            
             <div id="earth_div" style = "color: black">
    
            </div>
      <div id = basicNum class = "12"></div>  
   
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
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
      
  <script>
       //윤상혁. display loading image during ajax call
  $(function(){
	  $("#loading-image").hide();
	  $(document).ajaxStart(function(){
		  $("body").not("#loading-image").animate({
			  opacity: 0.7
		  })
		  $("#loading-image").show();
	  }).ajaxStop(function(){
		  $("body").not("#loading-image").animate({
			  opacity: 1
		  })
		  $("#loading-image").hide();
	  });
  });//윤상혁
  function initialize() {
     
     
     var earth = new WE.map('earth_div', {'tilting':false, 'sky': true, 'atmosphere': true, 'center' : [25.69056,51.43444], 'zoom' : 2.75 });
      var natural = WE.tileLayer('http://data.webglearth.com/natural-earth-color/{z}/{x}/{y}.jpg', {
          tileSize: 256,
          tms: true
        });
        natural.addTo(earth);
      WE.tileLayer('http://tile.stamen.com/toner/{z}/{x}/{y}.png',{
         attribution: 'Map tiles by Stamen Design, under CC BY 3.0. Data by OpenStreetMap, under CC BY SA.',
          opacity: 0.7
      }).addTo(earth);
     
      
     
      //주세휘
      <c:forEach items="${keyList}" var="keyword">
        <c:if test="${keyword.point eq null}">
         WE.marker(["${keyword.latitude}", "${keyword.longitude}"],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:12px;'><b class='blacktext' id='${keyword.keyword_num}'>"+"${keyword.keyword}"+"<b></span>", {maxWidth: 100, closeButton: false}).openPopup();
      </c:if>
         <c:if test="${keyword.point > 0}">
            WE.marker(["${keyword.latitude}", "${keyword.longitude}"],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:12px;'><b class='bluetext' id='${keyword.keyword_num}'>"+"${keyword.keyword}"+"<b></span>", {maxWidth: 100, closeButton: false}).openPopup();
         </c:if>
         <c:if test="${keyword.point < 0}">
           WE.marker(["${keyword.latitude}", "${keyword.longitude}"],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:12px;'><b class='redtext' id='${keyword.keyword_num}'>"+"${keyword.keyword}"+"<b></span>", {maxWidth: 100, closeButton: false}).openPopup();
        </c:if>
      </c:forEach>
    //주세휘//주세휘
      
      
      


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
      
      $(".we-pp").mouseout(function(){
         $(".we-pp-wrapper").css('z-index','0');
         $(".we-pp-content").css('z-index','0');
         $(this).css('z-index','0');
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
                 $("#articleTable").html("");
                 $.each(data, function(idx, val) {
                    $("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+","+val.article_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
                 });
            },
            error : function(){
               alert("에러!!");
            }
          });
      });
      
       $('div#earth_div').on("mousemove", function(){
			 		 var basicNum = $('#basicNum').attr('class');
			 	  
			          var fontsize = basicNum + "px";
			          
			          $("div.we-pp-content > span").removeAttr("style");
			          $("div.we-pp-content").css("font-size", fontsize );
			 		 
			 	  	/*  if(basicNum < -3){
			 	       	$("div.we-pp-content > span").removeAttr("style");
			 	          	$("div.we-pp-content").css("font-size", "6px");
			 	       } 
			 	       else if(basicNum >= -3 && basicNum < 0 ){
			 				$("div.we-pp-content > span").removeAttr("style");
			 	          	$("div.we-pp-content").css("font-size", "9px");
			 	        }
			 	    	else if(basicNum >= 0 && basicNum < 3){
			 	    		$("div.we-pp-content > span").removeAttr("style");
			 	       	    $("div.we-pp-content ").css("font-size", "12px");
			 	        }
			 	        else if(basicNum >= 3 && basicNum < 6){
			 	        	$("div.we-pp-content > span").removeAttr("style");
			 	       	    $("div.we-pp-content").css("font-size", "17px");
			 	        }else if(basicNum >= 6 && basicNum < 9){
			 	        	$("div.we-pp-content > span").removeAttr("style");
			 	       	    $("div.we-pp-content").css("font-size", "22px");
			 	        }else if(basicNum >= 9){
			 	        	$("div.we-pp-content > span").removeAttr("style");
			 	       	    $("div.we-pp-content").css("font-size", "35px");
			 	        } */

			 	}); 
			     	
			  
				/* var isMouseOnMarker = false; */
				$("#earth_div").on("mousewheel DOMMouseScroll", function (e) {
				/* 	if(isMouseOnMarker == true) return false; */
					 /* $("body").hover(function(ev){ 
						return false;
					});  */
						 //alert("dddddd")
				var basicNum = $('#basicNum').attr('class');
				basicNum = parseInt(basicNum);
					/* alert(basicNum); */

					var E = e.originalEvent;
			      delta = 0;
			      if (E.detail) {
			          delta = E.detail * -40;
			          
			      }else{
			          delta = E.wheelDelta;
			         
			      };
			      
			 	 if(delta < 0){
			          // 마우스 휠을 아래로 내렸을 경우
			          basicNum = basicNum -5;
			          basicNum = String(basicNum);
			          $('#basicNum').attr('class',basicNum);
			          var fontsize = basicNum + "px";
			          
			          $("div.we-pp-content > span").removeAttr("style");
			          $("div.we-pp-content").css("font-size", fontsize );
			          
			      };
			      if(delta > 0){
			          // 마우스 휠을 위로 올렸을 경우
			     	 basicNum = basicNum +5;
			     	 basicNum = String(basicNum);
			     	 $('#basicNum').attr('class',basicNum);
			     	 
			     	var fontsize = basicNum + "px";
			          
			          $("div.we-pp-content > span").removeAttr("style");
			          $("div.we-pp-content").css("font-size", fontsize );
			      };
			      
			      basicNum = parseInt(basicNum);
			      
			 	/*  if(basicNum < -3){
				       	$("div.we-pp-content > span").removeAttr("style");
				          	$("div.we-pp-content").css("font-size", "6px");
				       } 
				       else if(basicNum >= -3 && basicNum < 0 ){
							$("div.we-pp-content > span").removeAttr("style");
				          	$("div.we-pp-content").css("font-size", "9px");
				        }
				    	else if(basicNum >= 0 && basicNum < 3){
				    		$("div.we-pp-content > span").removeAttr("style");
				       	    $("div.we-pp-content ").css("font-size", "12px");
				        }
				        else if(basicNum >= 3 && basicNum < 6){
				        	$("div.we-pp-content > span").removeAttr("style");
				       	    $("div.we-pp-content").css("font-size", "17px");
				        }else if(basicNum >= 6 && basicNum < 9){
				        	$("div.we-pp-content > span").removeAttr("style");
				       	    $("div.we-pp-content").css("font-size", "22px");
				        }else if(basicNum >= 9){
				        	$("div.we-pp-content > span").removeAttr("style");
				       	    $("div.we-pp-content").css("font-size", "35px");
				        } */
			      
				})
			   /*  $(".we-pp-wrapper").mouseenter(function(event){ 
			     	 isMouseOnMarker = true;
			     
			    });
				  	$(".we-pp-wrapper").mouseleave(function(event){ 
				   	 isMouseOnMarker = false;
				});
       */
      
      
      $(".a_rank").click(function(){
         $("#articleTable").html("");
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
                   $("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td class='title_td'><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+","+val.article_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
                });
           },
           error : function(){
              alert("에러!!");
           }
         });
         //$(".we-pp").css("display","None");

      });
      
      //윤상혁
      $(".flag_icon").click(function(){
         //전체 아이콘의 클래스속성을 초기화
         $(".flag_icon").removeClass('selected_nation');
         //선택된 아이콘만 커지도록 하기 위해 클래스명 부여
         $(this).addClass('selected_nation');
         var nation_num = $(this).attr('nation_num');
         //alert(nation_num);
         $.ajax({
           url: "switchnation"
           , data: 'nation_num='+nation_num
           , dataType: "json"
           , success: function(data){
                 $(".reallist").html('');
              $.each(data, function(idx, val) {
                     if(val.realtime_num == 0){
                        $(".nation_curr").empty();
                        $(".nation_curr").text(val.keyword);
                        $(".realtime_date").text(val.realTime);
                     }
                     else{
                        $(".reallist").append('<tr><td><a href="#" class="a_realrank" onclick="print_realword_list('+'\''+val.keyword+'\''+');">'+(idx+1)+'위 : '+val.keyword+'</a></td></tr>');
                     }
                 });
           }, error: function(){
                alert("error"); 
           }
         });
      });
      //윤상혁
      
      $(".forward").click(function(){
         movenation('forward');
      });
      $(".backward").click(function(){
         movenation('backward');
      });//고규민      
      
      $("div#earth_div > canvas").attr("height", "737");
      
  }
  
function movenation(direction){
	  var current = $(".selected_nation");
	  
	  var nation = $(".nation_curr").text();
      //alert(nation);
    $(".reallist").html('');
       $.ajax({
              url : "movenation"
              , type : "post"
              , data : 
                {
                   'direction' : direction,
                  'curr_nation' : nation
                }
              , dataType : "json"
              , success : function(data){
            	  $(".flag_icon").removeClass("selected_nation");
            	  if(direction=='forward'){
            		  if(nation=='India'){
            			  $("img[nation_num=216]").addClass("selected_nation");
            		  } else{
	            		  current.next().addClass("selected_nation");
            		  }
            	  }else if(direction=='backward'){
            		  if(nation=="South Korea"){
            			  $("img[nation_num=230]").addClass("selected_nation");
            		  } else {
	            		  current.prev().addClass("selected_nation");
            		  }
            	  }
                //alert("success");
                 $.each(data, function(idx, val) {
                 if(val.realtime_num == 0){
                    $(".nation_curr").empty();
                    $(".nation_curr").text(val.keyword);
                    $(".realtime_date").text(val.realTime);
                 }
                 else{
              	   $(".reallist").append('<tr><td><a href="#" class="a_realrank" onclick="print_realword_list('+'\''+val.keyword+'\''+');">'+(idx+1)+'위 : '+val.keyword+'</a></td></tr>');
                 }
                 });
              }
              , error : function(){
                 alert("error")
              }
        });
  } //고규민
  /*
  function switchnation(nation_num){
      alert(nation);
    $(".reallist").html('');
       $.ajax({
              url : "movenation"
              , type : "post"
              , data : 
                {
                   'direction' : direction,
                  'curr_nation' : nation
                }
              , dataType : "json"
              , success : function(data){
                alert("success");
                 $.each(data, function(idx, val) {
                 if(val.realtime_num == 0){
                    $(".nation_curr").empty();
                    $(".nation_curr").text(val.keyword);
                    $(".realtime_date").text(val.realTime);
                 }
                 else{

                    $(".reallist").append('<tr><td><a href="#" class="a_realrank" onclick="print_realword_list('+'\''+val.keyword+'\''+');">'+(idx+1)+'위 : '+val.keyword+'</a></td></tr>');
                 }
                 });
              }
              , error : function(){
                 alert("error")
              }
        });
  }//고규민
  */
  //윤상혁
    function print_realword_list(word){
       $("#articleTable").html("<tr><th>번 호</th><th>기사 제목</th></tr>");
       $.ajax({
         url: 'realwordSelect',
         type: 'POST',
         data: {
            realword : word
            , country : $(".nation_curr").text()
         },
         dataType: 'json',
         success : function(data){
               
              $.each(data, function(idx, val) {
                 $("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td class='title_td'><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.arcURL+'"'+",999,0);' id='"+val.arcURL+"' class='title_a_real'>"+val.title+"</a></td> </tr>")
              });
         },
         error : function(){
            alert("에러!!");
         }
       });
    }//윤상혁  
  
  
  function initialize2(){
     var earth = new WE.map('earth_div', {'tilting':false, 'sky': true, 'atmosphere': true, 'center' : [25.69056,51.43444], 'zoom' : 2.75 });
      var natural = WE.tileLayer('http://data.webglearth.com/natural-earth-color/{z}/{x}/{y}.jpg', {
          tileSize: 256,
          tms: true
        });
        natural.addTo(earth);
      WE.tileLayer('http://tile.stamen.com/toner/{z}/{x}/{y}.png',{
         attribution: 'Map tiles by Stamen Design, under CC BY 3.0. Data by OpenStreetMap, under CC BY SA.',
          opacity: 0.7
      }).addTo(earth);
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
                    $("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+","+val.article_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
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
                   $("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td class='title_td'><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+","+val.article_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
                });
           },
           error : function(){
              alert("에러!!");
           }
         });
         //$(".we-pp").css("display","None");

      });
      $("div#earth_div > canvas").attr("height", "737");
      return earth;
  }
  
  function articleDetail(inputUrl,division_num,article_num){
     //alert(inputUrl);
     var item_tag = "<span onclick = 'scraping("+ article_num +");' class='fa fa-reply-all' style='cursor:pointer;'>";
     if(article_num==0){//스크랩 할 수 없는 기사인 경우(실검기사)
        item_tag = "<span class='fa fa-reply-all' style='cursor:pointer;'>";
     }
     $.ajax({
       url: "articleDetail"
       , type: "POST"
       , data: {
          url: inputUrl
       }, dataType: "text"
       , success: function(result){
          var panel5 = $.jsPanel({
             paneltype:   'modal',
             position:    {my: "center", at: "center"},
             contentOverflow: 'scroll',
             theme: 'black filled',
               contentSize: {width: 1000, height: 600},
               headerToolbar: [{
                  item:     item_tag,
                   event:    "click",
                   callback: function (event) {event.data.content.append("<p>You clicked on the menu ...</p>"); }
               }],
               show: "animated rubberBand",
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
       }, error: function(){
          alert("detail error");
       }
    });
  }//articleDetail
function realchart(){
	  var nation = $(".nation_curr").text();
	  var data = $(".a_realrank").text().split("위");
	  var words = [];
	  $.each(data, function(i,j){
		  if(i>0 && i<9){
			  words.push(j.substr(2, j.length-3));
		  }else if(i==9){
			  words.push(j.substr(2, j.length-4));
		  }else if(i==10){
			  words.push(j.substr(2));
		  }
	  });
	  $.ajax({
		 url: "getRealChartData"
		 , data: words
		 , dataType: "json"
		 , success: function(data){
			 alert(data);
		 }
	  });
	  var html = '<div id="chart_div"></div>';
	  var panel5 = $.jsPanel({
			 paneltype:   'modal',
			 position:    {my: "center", at: "center"},
			 contentOverflow: 'scroll',
			 theme: 'black filled',
	         contentSize: {width: 1000, height: 600},
	         show: "animated rubberBand",
	         headerTitle: "Article",
	         border:   "1px solid darkgray",
	         content: function(){
	        	 $(this).css('background-color','rgba(0,0,0,' + 0.8 + ')');
	        	 $(this).css('z-index','120000');
	        	 return html;
     	 },
     	 headerControls: {
     		 controls : 'all',
     		 minimize : 'remove'
		 },
	         dragit: {
	        	 disabled: false
     	 },
     	 callback: drawChart
     		 //this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)","z-index":"120000", fontStyle: "italic" });
     		 //this.content.css({"font-size": "16px","padding": "15px","z-index":"120000"});
		 	//}
	 });
  }//realchart
  
  function drawChart(){
	  alert("drawChart()");
	  google.charts.load('current', {packages: ['corechart', 'line']});
	  google.charts.setOnLoadCallback(drawCurveTypes);

	  function drawCurveTypes() {
	        var data = new google.visualization.DataTable();
	        data.addColumn('number', 'X');
	        data.addColumn('number', 'Dogs');
	        data.addColumn('number', 'Cats');

	        data.addRows([
	          [0, 0, 0],    [1, 10, 5],   [2, 23, 15],  [3, 17, 9],   [4, 18, 10],  [5, 9, 5],
	          [6, 11, 3],   [7, 27, 19],  [8, 33, 25],  [9, 40, 32],  [10, 32, 24], [11, 35, 27],
	          [12, 30, 22], [13, 40, 32], [14, 42, 34], [15, 47, 39], [16, 44, 36], [17, 48, 40],
	          [18, 52, 44], [19, 54, 46], [20, 42, 34], [21, 55, 47], [22, 56, 48], [23, 57, 49],
	          [24, 60, 52], [25, 50, 42], [26, 52, 44], [27, 51, 43], [28, 49, 41], [29, 53, 45],
	          [30, 55, 47], [31, 60, 52], [32, 61, 53], [33, 59, 51], [34, 62, 54], [35, 65, 57],
	          [36, 62, 54], [37, 58, 50], [38, 55, 47], [39, 61, 53], [40, 64, 56], [41, 65, 57],
	          [42, 63, 55], [43, 66, 58], [44, 67, 59], [45, 69, 61], [46, 69, 61], [47, 70, 62],
	          [48, 72, 64], [49, 68, 60], [50, 66, 58], [51, 65, 57], [52, 67, 59], [53, 70, 62],
	          [54, 71, 63], [55, 72, 64], [56, 73, 65], [57, 75, 67], [58, 70, 62], [59, 68, 60],
	          [60, 64, 56], [61, 60, 52], [62, 65, 57], [63, 67, 59], [64, 68, 60], [65, 69, 61],
	          [66, 70, 62], [67, 72, 64], [68, 75, 67], [69, 80, 72]
	        ]);

	        var options = {
	          hAxis: {
	            title: 'Time'
	          },
	          vAxis: {
	            title: 'Popularity'
	          },
	          series: {
	            1: {curveType: 'function'}
	          }
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
	        chart.draw(data, options);
	      }
  }//drawChart  
  function scraping(article_num){
         //스트랩 버튼을 눌렀을 때 db쪽으로 article번호를 넘기는 ajax코드
       $.ajax({
         url: 'scraping',
         type: 'POST',
         data: {
            article_num : article_num
         },
         dataType: 'text',
         success : function(result){
            if(result == 'success'){
               $.jsPanel({
                     template:    jsPanel.tplContentOnly,
                     paneltype:   'hint',
                     position:    'center-top -5 5 DOWN',
                     theme:       'green filledlight',
                     border:      '2px solid',
                     contentSize: '400 88',
                     show:        'animated slideInUp',
                     content:     "<div><i class='fa fa-check' style='margin:auto;'></i></div>"+
                                  "<div><p style='margin:auto;'>Success</p></div>"+
                                  "<div><i class='fa fa-remove'></i></div>",
                     callback:    function(panel) {
                         this.content.css({
                             display: 'flex',
                             color:   'darkgreen'
                         });
                         $('div:first-of-type', this.content).css({
                             borderRadius: '50%',
                             display:      'flex',
                             fontSize:     '36px',
                             margin:       '12px',
                             width:        '60px'
                         });
                         $('div', this.content).eq(1).css({
                             display:    'flex',
                             fontSize:   '24px',
                             fontWeight: 'bold',
                             textAlign:  'center',
                             width:      'calc(100% - 126px)'
                         });
                         $('div', this.content).eq(2).css({
                             display:       'flex',
                             flexDirection: 'row-reverse',
                             alignItems:    'flex-start',
                             fontSize:      '18px',
                             width:         '45px',
                             padding:       '4px'
                         });
                         $('div', this.content).eq(2).find('i').css({
                             cursor: 'pointer'
                         }).click(function(){panel.close();});
                     }
                 });
               
               
            }else if(result = "duplicated"){
               $.jsPanel({
                   template:    jsPanel.tplContentOnly,
                   paneltype:   'hint',
                   position:    'center-top -5 5 DOWN',
                   theme:       'warning filledlight',
                   border:      '2px solid',
                   contentSize: '400 88',
                   show:        'animated slideInUp',
                   content:     "<div><i class='fa fa-exclamation-circle' style='margin:auto;'></i></div>"+
                                "<div><p style='margin:auto;'>Already Exist</p></div>"+
                                "<div><i class='fa fa-remove'></i></div>",
                   callback:    function(panel) {
                       this.content.css({
                           display: 'flex',
                           color:   'darkorange'
                       });
                       $('div:first-of-type', this.content).css({
                           borderRadius: '50%',
                           display:      'flex',
                           fontSize:     '36px',
                           margin:       '12px',
                           width:        '60px'
                       });
                       $('div', this.content).eq(1).css({
                           display:    'flex',
                           fontSize:   '24px',
                           fontWeight: 'bold',
                           textAlign:  'center',
                           width:      'calc(100% - 126px)'
                       });
                       $('div', this.content).eq(2).css({
                           display:       'flex',
                           flexDirection: 'row-reverse',
                           alignItems:    'flex-start',
                           fontSize:      '18px',
                           width:         '45px',
                           padding:       '4px'
                       });
                       $('div', this.content).eq(2).find('i').css({
                           cursor: 'pointer'
                       }).click(function(){panel.close();});
                   }
               });
               
            }
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
        
        
    	//언어선택 드랍다운.
    	$('#Korean').on('click', function(){
    		$('#language').empty();
    		$('#language').append("Korean");
    	});
		$('#English').on('click', function(){
			$('#language').empty();
    		$('#language').append("English");		
		});
		$('#Japanese').on('click', function(){
			$('#language').empty();
    		$('#language').append("Japanese");
		});
		$('#Chinese').on('click', function(){
			$('#language').empty();
    		$('#language').append("Chinese");
		});
		//언어선택 드랍다운 css 수정.
		   $(".dropdown-menu").css('min-width','0');
		   $(".dropdown-menu").css('padding','0');
		   $(".dropdown-menu").css('width','102px');
    	//주세휘
    	
       
       //주세휘
    
         /*실시간 키워드*/
            //고규민, 윤상혁(수정)
            var panel = $.jsPanel({
            position:    {my: "left-bottom", at: "left-bottom", offsetY: 0},
            contentOverflow: 'scroll',
            theme: 'black filled',
            headerControls: {
                maximize: 'remove',
                close: 'remove'
            },
            headerToolbar: 
            [
            	{
        			item: "<div class='flags'>"
	        				+"<img class='flag_icon selected_nation' nation_num='216' src='resources/img/flag_korea.png' width='24px' style='margin-left:15px;'>&nbsp;"
	        				+"<img class='flag_icon' nation_num='222' src='resources/img/flag_japan.png' width='24px'>&nbsp;"
	        				+"<img class='flag_icon' nation_num='104' src='resources/img/flag_usa.png' width='24px'>&nbsp;"
	        				+"<img class='flag_icon' nation_num='105' src='resources/img/flag_uk.png' width='24px'>&nbsp;"
	        				+"<img class='flag_icon' nation_num='138' src='resources/img/flag_singapore.png' width='24px'>&nbsp;"
	        				+"<img class='flag_icon' nation_num='33' src='resources/img/flag_canada.png' width='24px'>&nbsp;"
	        				+"<img class='flag_icon' nation_num='230' src='resources/img/flag_india.png' width='24px'>"
           				+"</div>",
           			event: "click",
           			callback: function() {}
        	}
          ],
        dragit: {
        	disable: true
    	},
    	contentSize: {width: 260, height: 295},
        headerTitle: "Realtime Ranking",
        border:   "1px solid darkgray",
        content: function(){
            $(this).css('background-color', 'rgba(0,0,0,' + 0.3 + ')');
    		return "<div class = 'real_menu'><img src='resources/img/chart-icon-color.png' onclick='realchart();' style='width:30px;margin-left:5px;'></div>"
            		+"<div class = 'real_menu backward' style='margin-left:5px;'><span class='fa fa-chevron-left backward' style='cursor:pointer;'></div>"
           			+"<div class = 'real_menu nation_curr' style='margin-left:10px;width:120px;text-align:center;'>South Korea</div>"
            		+"<div class = 'real_menu forward' style='margin-left:10px;margin-right:5px;'><span class='fa fa-chevron-right' style='cursor:pointer;'></div><br>"
            		+"<div class = 'realtime_date' style='text-align:right;'>${realKeywordList.get(0).realTime}</div>"
            		+'<div class = "reallist"><c:forEach items="${realKeywordList}" var="keyword" varStatus="stat" begin="0"><a href="#" class="a_realrank" onclick="print_realword_list('+"'${keyword.keyword}'"+');">${stat.count}위 : ${keyword.keyword}</a><br/></c:forEach></div>';
        },
            callback: function () {
                this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", fontStyle: "italic" ,fontWeight: "bold"});
                this.content.css({"font-size": "16px","padding": "10px"});
            }
        });//고규민(수정)
        
        
        var panel2 = $.jsPanel({
            position:    {my: "left-top", at: "left-top", offsetY: 60},
            theme: 'black filled',
            contentSize: {width: 260, height: 248},
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
                $(this).css('background-color', 'rgba(0,0,0,' + 0.5 + ')');
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
            headerTitle: "Article List",
            border:   "1px solid darkgray",
            content: function(){
                $(this).css('background-color', 'rgba(0,0,0,' + 0.5 + ')');
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
/*    ========================================================    여기부터 현 수정    ========================================================    */
             //call the plugin
             $('body').mln_menu(
             {
                'background' : '#333',
                'color' : '#fff',
                'hoverbackground' : '#fff',
                'hovercolor' : '#808285',
                'itens' : ['Home', 'User', 'Board', 'Logout'],
                'hrefs' : ['#home', '#user', '#board', '#logout'],
                'icons' : ['fa fa-home', 'fa fa-user', 'fa fa-pencil-square-o', 'icon-logout']
             });
                
               
             $("#menu_left > ul > li > a").on("click", function(){
                
                
                var href = $(this).attr("href");
                 if(href == '#board'){
                     var board = $.jsPanel({
                        position:    {my: "center", at: "center", offsetY: 50, offsetX: 10},
                        theme: 'black filled',
                        contentSize: {width: 1200, height: 600},
                        headerTitle: "Board",
                        border:   "1px solid darkgray",
                        content: "",
                        contentIframe: {
                            width:  1200,
                            height: 600,
                            src:    'boardList',
                            name:   'myFrame',
                            style:  {'border': '1px solid #000'}
                        },
                        callback: function () {
                            this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", "fontStyle": "italic" ,"fontWeight": "bold"});
                        }
                    });
                     
                 } else if(href == '#user'){
                    var user = $.jsPanel({
                         position:    {my: "center", at: "center", offsetY: 50, offsetX: 10},
                         theme: 'black filled',
                         contentSize: {width: 1200, height: 600},
                         headerTitle: "My Page", 
                         border:   "1px solid darkgray",
                         content: "",
                         contentIframe: {
                             width:  1200,
                             height: 600,
                             src:    'myPage',
                             name:   'myFrame',
                             style:  {'border': '1px solid #000'}
                         },
                         callback: function () {
                             this.header.title.css({"font-size" : "12px","color":"rgb(251,207,53)", "fontStyle": "italic" ,"fontWeight": "bold"});
                         }
                     });
                 }
             })
         });
/*    ========================================================    여기까지 현 수정    ========================================================    */
         
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
  	 
  	 $("#clear1").css("display", "inline");

  	 //체크 되면 버튼 생성.
  	 
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
    markerFilter();
   }       
});
//disable을 쓸 필요없이 ul안의 list가 전혀 없다가, db를 통해, 불러온다.

$('#clear1').on('click', function(){
	 $("div#nation").empty();
   $("div#nation").append("Nation");
   $("#broadcast").empty();
	 $("#broadcastList").empty();
   $("#broadcast").append("Broadcast");
   $("#division").empty();
   $("#divisionList").empty();
   $("#division").append("Division");
   $('input:radio[name=radio1]').prop('checked', false);
	 $("#clear1").css("display", "none");
	 
});
     // 필터링 하는 부분.
	$(".dp_daypicker").click(function(){
		var start = $("#datepicker-example7-start").val();
		var end = $("#datepicker-example7-end").val();
		if(start != '' && end != ''){
			markerFilter();
		}
	});
    
    
    
	$('#main-menu').smartmenus({
		mainMenuSubOffsetX: 1,
		subMenusSubOffsetX: -8,
		subMenusSubOffsetY: 0,
		hideTimeout:500
		
	});
});
function bOutput(resp){//데이터를 받는 것이 성공하면 함수를 실행한다. 
	var blist = '<li><input type = "button" value = "Clear" class = "clearbtn"  id = "clear2" style = "display:none;"></li>';
	
	$.each(resp, function(index,item){
		
		blist += '<li><a href="#" onclick="broadcast();"><input type="radio" name="radio2" id="'+item.broadcastName+'"value="'+item.broadcastNum+'"><label for = "'+ item.broadcastName +'" >'+ item.broadcastName + '</label></a></li>';
	});
	$("#broadcastList").empty();
	$("#broadcastList").append(blist);
	
	
	 $('#clear2').on('click', function(){
	 $("div#broadcast").empty();
     $("div#broadcast").append("Broadcast");
     $('input:radio[name=radio2]').prop('checked', false);
	 $("#clear2").css("display", "none");
	 
});
};
function dOutput(resp){//데이터를 받는 것이 성공하면 함수를 실행한다. 
	
	var dlist = '<li><input type = "button" value = "Clear" class = "clearbtn"  id = "clear3" style = "display:none;"></li>';
	
	$.each(resp, function(index,item){
		
		dlist += '<li><a href="#" onclick="division();"><input type="radio" name="radio3" id="'+item.divisionName+'"value="'+item.divisionNum+'"><label for = "'+ item.divisionName +'">'+ item.divisionName + '</label></a></li>';
	});
	$("#divisionList").empty();
	$("#divisionList").append(dlist);
	
	
	$('#clear3').on('click', function(){
	   	 $("div#division").empty();
   $("div#division").append("Division");
   $('input:radio[name=radio3]').prop('checked', false);
	     $("#clear3").css("display", "none");
	 
});
};
function broadcast(){
	
	if($('input:radio[name=radio2]').is(':checked')){
		
		
		 
	    var checked = $('input:radio[name=radio2]:checked').attr("id");
	   
	    $("#broadcast").empty();
	    $("#broadcast").append(checked);
	    $("#clear2").css("display", "inline");
        markerFilter();
	}       
};
function division(){

	if($('input:radio[name=radio3]').is(':checked')){
		
		 
	  
	  var checked = $('input:radio[name=radio3]:checked').attr("id");
	  
	  $("#division").empty();
	  $("#division").append(checked);
	  $("#clear3").css("display", "inline");
    markerFilter();
	}       
};

function markerFilter(){
   //현재 선택된 nation 값
   var nation_num = $('input:radio[name=radio1]:checked').attr('value');
   //현재 선택된 broadcast 값 
    var broadcast_num = $('input:radio[name=radio2]:checked').attr("value");
    //현재 선택된  division 값
    var division_num = $('input:radio[name=radio3]:checked').attr("value");
    //현재 선택된 fromDate 값
   var start = $("#datepicker-example7-start").val();
    //현재 선택된 toDate 값
   var end = $("#datepicker-example7-end").val();

    if(typeof nation_num == "undefined"){
       nation_num = 0;
    } 
    if(typeof broadcast_num == "undefined"){
       broadcast_num = 0;
    }
    if(typeof division_num == "undefined"){
       division_num = 0;
    }
    if(start == ""){
       start = 0;
    }
    if(end == ""){
       end = 0;
    }
    $.ajax({
      url: 'keywordFilter',
      type: 'POST',
      data: {
         nation_num : nation_num,
         broadcast_num : broadcast_num,
         division_num : division_num,
         fromDate : start,
         toDate : end
      },
      dataType: 'json',
      success : function(data){
         $(".we-pp").remove();
         $("#earth_div > canvas").remove();
         var earth = initialize2();
         $.each(data, function(idx, val) {
            console.log(val.latitude);
            if(val.point > 0){
               WE.marker([val.latitude, val.longitude],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:15px;'><b class='bluetext' id='"+val.keyword_num+"'>"+val.keyword+"<b></span>", {maxWidth: 160, closeButton: false}).openPopup();
            }
            if(val.point < 0){
               WE.marker([val.latitude, val.longitude],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:15px;'><b class='redtext' id='"+val.keyword_num+"'>"+val.keyword+"<b></span>", {maxWidth: 160, closeButton: false}).openPopup();
            }
            if(val.point == null || val.point == 0.0){
               console.log(val.point);
               WE.marker([val.latitude, val.longitude],"", 10, 10).addTo(earth).bindPopup("<span style = 'font-size:15px;'><b class='blacktext' id='"+val.keyword_num+"'>"+val.keyword+"<b></span>", {maxWidth: 160, closeButton: false}).openPopup();
            }
            
         });
         $(".we-pp-tip").removeAttr("background");
            $(".we-pp-wrapper").removeAttr("background");
            $(".we-pp").mouseover(function(){
              $(".we-pp-wrapper").css('z-index','200000');
              $(".we-pp-content").css('z-index','200000');
              $(this).css('z-index','200000');
            });
            
            $(".we-pp").mouseout(function(){
               $(".we-pp-wrapper").css('z-index','0');
               $(".we-pp-content").css('z-index','0');
               $(this).css('z-index','0');
             });
            
            $("div#earth_div > canvas").attr("height", "737");
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
                          $("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+","+val.article_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
                       });
                  },
                  error : function(){
                     alert("에러!!");
                  }
                });
            });   
      },
      error : function(){
         alert("에러!!");
      }
   });  
    
}

function keywordSearch(){
       var keyword = $(".form-control").val();   // 스트링으로 잘 들어옴.
     
      //현재 선택된 nation 값
      var nation_num = $('input:radio[name=radio1]:checked').attr('value');
      //현재 선택된 broadcast 값 
       var broadcast_num = $('input:radio[name=radio2]:checked').attr("value");
       //현재 선택된  division 값
       var division_num = $('input:radio[name=radio3]:checked').attr("value");
       //현재 선택된 fromDate 값
      var start = $("#datepicker-example7-start").val();
       //현재 선택된 toDate 값
      var end = $("#datepicker-example7-end").val();
   
       if(typeof nation_num == "undefined"){
          nation_num = 0;
       } 
       if(typeof broadcast_num == "undefined"){
          broadcast_num = 0;
       }
       if(typeof division_num == "undefined"){
          division_num = 0;
       }
       if(start == ""){
          start = 0;
       }
       if(end == ""){
          end = 0;
       }
        
       $.ajax({
         url: 'selectArticleFromSearch',
         type: 'POST',
         data: {
            nation_num : nation_num,
            broadcast_num : broadcast_num,
            division_num : division_num,
            fromDate : start,
            toDate : end,
            keyword : keyword
         },
         dataType: 'json',
         success : function(data){
             if(data.length == 0){
                $("#articleTable").html("");
                $("#articleTable").append("<tr><td colspan='3' style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>데이터가 존재하지 않습니다.</td> </tr>")
             }
             else{
                $("#articleTable").html("<tr><th>번 호</th><th>기사 제목</th></tr>");
                $.each(data, function(idx, val) {
                    $("#articleTable").append("<tr><td style = 'table>tr>td{padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;}'>"+idx+"</td><td><a href='javascript:void(0);' onclick='articleDetail("+'"'+val.url+'"'+","+val.division_num+","+val.article_num+");' id='"+val.url+"' class='title_a'>"+val.title+"</a></td> </tr>")
                  });
             }
         },
         error : function(){
            alert("에러!!");
         }
      });
       
}




</script>
<!-- 윤상혁 -->     
<img id="loading-image" src="resources/img/loading1.gif" style="width:130px;position:absolute;margin:auto;top:0;left:0;right:0;bottom:0;z-index:9999999">     

</body>
</html>