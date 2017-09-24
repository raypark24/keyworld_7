<%@	page import="sesoc.global.keyworld.vo.ScrapedArticle"%>
<%@	page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <style type="text/css">
        body {
            background: #000;
            font-family: verdana;
            padding-top: 50px;
            color: #fff;
        }
        #vtab {
            margin: auto;
            width: 800px;
            height: 100%;
        }
        #vtab > ul > li {
            width: 110px;
            height: 110px;
            background-color: #000 !important;
            list-style-type: none;
            display: block;
            text-align: center;
            margin: auto;
            padding-bottom: 10px;
            border: 1px solid #fff;
            position: relative;
            border-right: none;
            opacity: .3;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=30)";
            filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=30);
        }
        #vtab > ul > li.home {
            background-image: url("resources/images/list.png");
            background-size: contain;
            background-repeat: no-repeat;
        }
        #vtab > ul > li.login {
            background-image: url("resources/images/user.png");
            background-size: contain;
            background-repeat: no-repeat;
        }
        #vtab > ul > li.selected {
            opacity: 1;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
            filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100);
            border: 1px solid #ddd;
            border-right: none;
            z-index: 10;
            background-color: #010101 !important;
            position: relative;
        }
        #vtab > ul {
            float: left;
            width: 110px;
            text-align: left;
            display: block;
            margin: auto 0;
            padding: 0;
            position: relative;
            top: 30px;
        }
        #vtab > div {
            background-color: #010101;
            margin-left: 110px;
            border: 1px solid #ddd;
            min-height: 500px;
            padding: 12px;
            position: relative;
            z-index: 9;
            -moz-border-radius: 20px;
        }
        #vtab > div > h4 {
            color: rgb(251,207,53);
            font-size: 1.2em;
            border-bottom: 1px dotted #800;
            padding-top: 5px;
            margin-top: 0;
        }
        #loginForm label {
            float: left;
            width: 100px;
            text-align: right;
            clear: left;
            margin-right: 15px;
        }
        #loginForm fieldset {
            border: none;
        }
        #loginForm fieldset > div {
            padding-top: 3px;
            padding-bottom: 3px;
        }
        #loginForm #login {
            margin-left: 115px;
        }
        .scrapList {
        	width: 100%;
        	height: 100%;
        }
    </style>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            var $items = $('#vtab>ul>li');
            $items.mouseover(function() {
                $items.removeClass('selected');
                $(this).addClass('selected');

                var index = $items.index($(this));
                $('#vtab>div').hide().eq(index).show();
            }).eq(1).mouseover();
            
            $("#password2").keyup(passwordCheck);
        });
            
		function passwordCheck() {
			alert("!!!!!");
			var pw1 = $("#password").val();
			var pw2 = $("#password2").val();
			var pwConfirm = '';
				
			if (pw1 != pw2) {
				pwConfirm = 'unmatched password!!';
				$("#passwordCheckConfirm").html(pwConfirm);
				$("#send_btn").prop('disabled', true)
			} else {
				pwConfirm = 'password matched';
				$("#passwordCheckConfirm").html(pwConfirm);
				$("#send_btn").prop('disabled', false)
			}
		};
    </script>
</head>
<body>
    <div id="vtab">
        <ul>
            <li class="home selected"></li>
            <li class="login"></li>
        </ul>
        <div>
            <h4>Scrap News List</h4>
            <div>
            	<table class="Scrap_List_Table">
            		<thead>
            			<tr>
            				<td>No.</td>
            				<td>Title</td>
            				<td>When</td>
            			</tr>
            		</thead>
            		<tbody>
            			<c:forEach var="scrapedArticle" items="${scrapList}" varStatus="stat">
							<tr>
								<td>${stat.count}</td>
							<!-- 뷰단 링크 수정해야함 기사 보여주는 페이지로!!!!!!!!!!!!!!!!!!! -->
								<td class="title"><a href="boardDetail?boardnum=${scrapedArticle.article_num}">${scrapedArticle.article_title}</a></td>
								<td>${scrapedArticle.scrap_date}</td>
							</tr>
						</c:forEach>
            		</tbody>
            	</table>
           	</div>
        </div>
        <div>
            <h4>Update</h4>
	        	<h2>Update User Information</h2>
	        	<form id="joinForm" action="modify" method="post">
	        		<table>
						<tr>
							<th>Password</th>
							<td>
								<input type="password" id="password" name="password" placeholder="3~10자리 비밀번호" style = "color: rgb(251,207,53);" />
							</td>
						</tr>
						<tr>
							<th>Password Check</th>
							<td>
								<input type="password" id="password2" style = "color: rgb(251,207,53);" />
							</td>
						</tr>
						<tr>
							<th>Confirm</th>
							<td>
								<p id="passwordCheckConfirm" style = "color: rgb(251,207,53);"></p>
							</td>
						</tr>
						<tr>
							<th>Name</th>
							<td>
								<input type="text" id="name" name="name"  style = "color: rgb(251,207,53);"/>
							</td>
						</tr>
						<tr>
							<th>E-Mail</th>
							<td>
								<input type="email" id="email" name="email" style = "color: rgb(251,207,53);"/>
							</td>
						</tr>
						<tr>
							<td colspan= "2">
								<input type="submit" id="send_btn" value="Modify" style = "background-color: rgb(251,207,53);width:370px; color: white"/>
							</td>
						</tr>
					</table>
				</form> <!-- joinForm End -->
        </div>
    </div>
	
</body>
</html>