<%@	page import="sesoc.global.keyworld.vo.Board"%>
<%@	page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
	    <meta charset="UTF-8">
	    <title>Board</title>
		<style>
			table {
				width: 100%;
				height: 100%;
				text-align: center;
			}
			.board-table tr:hover {
				background-color: grey;
			}
			.No .view {
				width: 10%;
			}
			.date .who {
				width: 25%;
			}
			.title {
				width: 40%;
			}
			.boardTable {
				padding: 8px;
				line-height: 1.42857143;
				vertical-align: bottom;
				color: #ffffff;
			}
			.write_btn {
				
			}
			h2 {
				font-size: 24px;
				color: rgb(251,207,53);
				fontStyle: italic;
				fontWeight: bold
			}
			th {
				font-size: 20px;
				color: rgb(251,207,53);
				fontStyle: italic;
				fontWeight: bold
			}
			#search {
				float: right;
			}
			.pagination {
				height: 5%;
				width: auto;
				float: center;
			}
			.write_btn {
				float: right;
			}
			.back {
			}
			.left-chevron {
			}
			.right-chevron {
			}
			.skip {
			}
			
		</style>
	</head>
	<body>
		<h2>BBS</h2>
		<div class="home">
			<a href="${pageContext.request.contextPath}/"><img src="images/main.jpg" /></a>

			<!-- 특정 글 검색 -->
			<form id="search" action="boardList" method="GET">
				<select name="searchtype">
					<option value="title" ${searchtype=='title' ? 'selected' : ''}>Title</option>
					<option value="userid" ${searchtype=='userid' ? 'selected' : ''}>Writer</option>
					<option value="content" ${searchtype=='content' ? 'selected' : ''}>Content</option>
				</select> 
				<input type="text" name="searchword" value="${searchword}" /> 
				<input class="btn" type="submit" value="Search" />
			</form>
		</div>
		
		<!-- 게시글 목록 시작 -->
		<div class="boardTable">
			<table class="board-table">
				<tr>
					<th class="No">No.</th>
					<th class="title">Title</th>
					<th class="date">When</th>
					<th class="userid">Who</th>
					<th class="view_count">View</th>
				</tr>
				<!-- 게시글 출력  -->
				<c:forEach var="board" items="${boardList}" varStatus="stat">
					<tr>
						<td>${stat.count}</td>
						<td class="title"><a href="boardDetail?boardnum=${board.boardnum}">${board.title}</a></td>
						<td>${board.writed_date}</td>
						<td>${board.userid}</td>
						<td>${board.view_count}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="write_btn">
		<!-- 이거도 이미지로 바꿀까나... -->
			<a class="write_btn" href="boardWrite" src="resources/images/edit.svg"></a>
		</div>
		<!-- Paging 출력 부분 -->
		<!-- 페이지당 글 10개씩 출력하기로  -->
		<div class="pagination">
			<a class="back" href="boardList?currentPage=${navi.currentPage - navi.pagePerGroup}&searchtype=${searchtype}&searchword=${searchword}">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 264.747 264.747" style="enable-background:new 0 0 264.747 264.747;" xml:space="preserve" width="16px" height="16px">
				<g><g><g>
					<polygon points="264.747,34.453 234.667,4.373 106.667,132.373 234.667,260.373 264.747,230.293 166.827,132.373    " fill="#FFDA44"/>
					<rect x="0" y="4.373" width="42.667" height="256" fill="#FFDA44"/>
				</g></g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
				</svg>
			</a>
			<a class="left-chevron" href="boardList?currentPage=${navi.currentPage - 1}&searchtype=${searchtype}&searchword=${searchword}">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 256 256" style="enable-background:new 0 0 256 256;" xml:space="preserve" width="16px" height="16px">
				<g><g>
					<polygon points="207.093,30.187 176.907,0 48.907,128 176.907,256 207.093,225.813 109.28,128   " fill="#FFDA44"/>
				</g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
				</svg>
			</a>
			&nbsp;&nbsp;
			<c:forEach var="page" begin="${navi.startPageGroup}"
				end="${navi.endPageGroup}">
				<c:if test="${navi.currentPage eq page}">
					<span style="color: blue; font-weight: bolder; font-size: 2em;">${page}</span>
				</c:if>
				<c:if test="${navi.currentPage ne page}">
					<a href="boardList?currentPage=${page}">${page}</a>
				</c:if>
			</c:forEach>
			&nbsp;&nbsp; 
			<a class="right-chevron" href="boardList?currentPage= ${navi.currentPage + 1}&searchtype=${searchtype}&searchword=${searchword}">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 256 256" style="enable-background:new 0 0 256 256;" xml:space="preserve" width="16px" height="16px">
				<g><g>
					<polygon points="79.093,0 48.907,30.187 146.72,128 48.907,225.813 79.093,256 207.093,128   " fill="#FFDA44"/>
				</g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
				</svg>
			</a>
			<a class="skip" href="boardList?currentPage=${navi.currentPage + navi.pagePerGroup}&searchtype=${searchtype}&searchword=${searchword}">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 264.747 264.747" style="enable-background:new 0 0 264.747 264.747;" xml:space="preserve" width="16px" height="16px">
				<g><g><g>
					<polygon points="0,34.453 97.92,132.373 0,230.293 30.08,260.373 158.08,132.373 30.08,4.373    " fill="#FFDA44"/>
					<rect x="222.08" y="4.373" width="42.667" height="256" fill="#FFDA44"/>
				</g></g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
				</svg>
			</a>
		</div>
	</body>
</html>
