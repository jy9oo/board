<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세페이지</title>
</head>
<style>
	div.board_content {
		margin:auto;
		border:1px solid green;
	}
	div.board_content section.button div{
		margin:10px 27%;
	}
	div.board_content section.button div ul{
		list-style:none;
	}
	div.board_content section.button div ul li a{
		text-decoration:none;
	}
	div.board_content section.button button{
		all:unset;
		color:black;
		background-color:white;
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_content section.button button:hover {
		all:unset;
		color:rgb(66,139,202);
		background-color:rgb(238,238,238);
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_content section.button button.btn_question {
		all:unset;
		color:white;
		background-color:rgb(66,139,202);
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_content section.content div ul{
		list-style:none;
	}
	div.board_content section.content div ul li:first-child {
		font-size:22px;
		margin-top:30px;
	}
	div.board_content section.content table{
		border:1px solid #CCC;
		border-collapse:collapse;
		margin:25px 30px 25px 0;
	}
	div.board_content section.content table tr:first-child td{
		font-size:15px;
		font-weight:600;
		color:black;
		background-color:rgb(238,238,238);
		padding: 5px 13px;
	}
	div.board_content section.content table tr:first-child td span{
		margin-left:20px;
		margin-right:20px;
	}
	div.board_content section.content table tr:first-child td button{
		all:unset;
	}
	div.board_content section.content table tr:nth-child(2){
		padding-left:20px;
		font-size:14px;
	}
	div.board_content section.content div ul button.update_btn,
	div.board_content section.content div ul button.reply_btn{
		all:unset;
		color:white;
		background-color:rgb(66,139,202);
		font-size:15px;
		width:auto;
		height:38px;
		padding:0 15px;
	}
	div.board_content section.content div ul a{
		text-decoration:none;
	}
</style>
<body>
	<div class="board_content">
		<section class="button">
				<div>
					<ul>
						<li>
							<button class="btn_all">전체</button>
							<button class="btn_free">자유</button>
							<button class="btn_question">질문</button>
							<button class="btn_typo">오타/오역/요청</button>
							<button class="btn_ad">홍보</button>
							<a href="board_write.do"><button class="btn_write">글쓰기</button></a>
						</li>				
					</ul>
				</div>
			</section>
		<section class="content">
			<%-- <c:forEach var="vo" items="list"> --%>
			<div>
				<ul>
					<li>${vo.btitle }</li>
					<li>
						<table>
							<tr>
								<td> ${vo.mid } <span>${vo.bdate }</span><span>👍${vo.blike }</span></td>
							</tr>
							<tr>
								<td>
									${vo.bcontent }
									<br><br><br>
								</td>
							</tr>
						</table>
					</li>
						<a href="board_update.do?id=${vo.bid}"><button type="button" class="update_btn">수정 하기</button></a>
						<button type="button" class="reply_btn">댓글 쓰기</button>
				</ul>
			</div>
			<%-- </c:forEach> --%>
		</section>
		
	</div>
</body>
</html>