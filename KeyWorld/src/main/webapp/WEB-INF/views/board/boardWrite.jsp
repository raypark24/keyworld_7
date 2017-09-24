<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			div#wrapper{
				width : 800px;
				margin : 0 auto;
				
			}
			div#wrapper>h2 {
				text-align : center;
			}
			th {
				width: 100px;
			}
			td {
				width:600px;
			}
			div#wrapper table {
				margin:0 auto;
			}
			.boardTable {
						padding: 8px;
						line-height: 1.42857143;
						vertical-align: bottom;
						color: #ffffff;
					}
		</style>
		<script>
			$(function() {
				$(".search_btn").on("click", search_list())
			})
			
			function search_list() {
				
			}
		</script>
	</head>
	<body>
		<div id="wrapper">
		<h2>[ 게시판 글쓰기 ]</h2>
			<form action="boardWrite" method="POST">
				<table class="boardTable" border="1">
				<tr>
					<th>Title</th>
					<td><input type="text" name="title" required/></td>
				</tr>
				<tr>
					<th>Writer</th>
					<td>${loginId}</td>
				</tr>
				<tr>
					<th>Link url</th>
					<td><input type="text"><input type="button" class="search_btn" value="Search my Favorit list"></td>
				</tr>
				<tr>
					<th>Content</th>
					<td><textarea name="content" cols="60" rows="10"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="글등록" />
						<input type="reset" value="취소" />
						<a href="boardList" >목록으로</a>
					</td>
				</tr>
				</table>
			</form>
		</div>
	</body>
</html>