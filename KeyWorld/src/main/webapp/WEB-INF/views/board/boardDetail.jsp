<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			div#wrapper {
				width: 800px;
				margin: 0 auto;
			}
			
			div#wrapper>h2 {
				text-align: center;
			}
			
			div#wrapper table {
				margin: 0 auto;
				width: 800px;
			}
			
			th {
				width: 100px;
			}
			
			pre {
				width: 600px;
				height: 200px;
				overflow: auto;
			}
			
			table.reply {
				width: 800px;
			}
			
			input[name='text'] {
				width: 600px;
			}
			
			span {
				display: inline-block;
				margin: 5px;
			}
			
			td.replycontent {
				width: auto;
			}
			
			td.replytext {
				width: 600px;
				text-align: left;
			}
			
			td.replysub {
				width: 80px;
				text-align: right;
			}
			
			td.replybtn {
				width: 100px;
				text-align: right;
			}
		</style>
		
		<script src="resources/jquery-3.2.1.min.js"></script>
		<script>
			$(function() {
				$("#reply_submit").on('click', replyWrite)
				replyList();
			});
			
			function replyList() {
				$.ajax({
					url : "selectAll"
					, method : "GET"
					, datatype : "json"
					, success : function(resp) {
						var list = '';
						list += '<table><tr>';
						list += '<th>내용</th>';
						list += '<th>작성자</th>';
						list += '<th>작성일</th>';
						list += '<th></th></tr>';
						$.each(resp, function(index, item) {
							list += '<tr>';
							list += '<td>'+item.text+'</td>';
							list += '<td>'+item.custid+'</td>';
							list += '<td>'+item.inputdate+'</td>';
							list += '<td><input type="button" class="deleteBtn" value="삭제" data-num="'+item.replynum'" /></td>';
							list += '<td><input type="button" class="updateBtn" value="수정" data-num="'+item.replynum'" /></td>';
						});
						list += '</table>';
						
						$("#replydisplay").html(list);
						$(".deleteBtn").on('click', del);
						$(".updateBtn").on('click', update);
						
					}
				});
			};
			function del() {
				var replynum = $(this).attr("data-num");
				$.ajax({
					url : "delete"
					, method : "GET"
					, data : "replynum="+replynum
					, datatype : "text"
					, success : function(resp) {
						alert(resp);
						replyList();
					}
				})
			};
			function replyWrite() {
				var boardnum = ${board.boardnum};
				var loginId = '${sessionScope.loginId}';
				var writetext = $(this).attr("#reply_txt")
			}
			function replydelete(replynum) {
				var answer = confirm("댓글을 삭제하시겠습니까?");
				if (answer) {
					location.href = "replyDelete?replynum=" + replynum + "&boardnum=" + "${board.boardnum}";
				}
				return; // 기본 액션이 없는 경우에는 그냥 return;
			}
			function replymodify(replynum, text) {
				document.getElementById("reply_txt").value = text;
				document.getElementById("reply_submit").value = "댓글 수정";
		
				document.getElementById("reply_submit").onclick = function() {
					if (document.getElementById("reply_submit").value == "댓글 수정") {
						var updatetext = document.getElementById("reply_txt").value;
						location.href = "replyUpdate?replynum=" + replynum + "&boardnum=" + "${board.boardnum}&text=" + updatetext;
					}
				}
				return false; // 기본 액션이 있는 경우에는 함수 완료 후 기본액션을 없애는 역할을 한다. == <input type="submit" onclick="return check()" />;
			}
			function replywrite() {
				var writetext = $("#reply_txt").val();
				$("#replyWrite").submit();
			}
		</script>
	</head>
	<body>
		<div id="wrapper">
			<h2>[ 게시판 글보기 ]</h2>
				<table border="1">
					<tr>
						<th>제목</th>
						<td>${board.title}</td>
					</tr>
					<tr>
						<th>글쓴날</th>
						<td>${board.inputdate}</td>
					</tr>
					<tr>
						<th>글쓴이</th>
						<td>${board.custid}</td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td>
						</td>
					</tr>
					<tr>
						<th>글내용</th>
						<td><pre>${board.content }</pre></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="button" onclick="location.href='boardUpdate?boardnum=${board.boardnum}'" value="글수정" /> 
							<input type="button" onclick="location.href='boardDelete?boardnum=${board.boardnum}'" value="삭제" /> 
							<a href="boardList">목록으로</a>
						</td>
					</tr>
				</table>
				<br />
				<!-- 댓글 입력 / 로그인한 사람만 댓글을 달 수 있다. -->
				<form id="replyWrite" action="board" method="POST">
					<input type="hidden" name="action" value="replyWrite" /> 
					<input type="hidden" name="boardnum" value="${board.boardnum }" />
					<table id="replyinput" class="reply">
						<tr>
							<td>
								<input id="reply_txt" type="text" name="text" /> 
								<input id="reply_submit" type="button" value="댓글 입력" />
							</td>
						</tr>
					</table>
				</form>
				<!-- 댓글 출력 -->
				<div id="replydisplay"></div>
				<!-- end #replydisplay -->
		</div>
		<!-- end #wrapper -->
	</body>
</html>