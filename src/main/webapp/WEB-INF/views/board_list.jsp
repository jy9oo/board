<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
</head>
<style>
	div.board_list {
		margin:auto;
		border:1px solid green;
	}
	div.board_list div.title {
		margin:20px 47% 10px 47%;
		display:inline-block;
		color:rgb(66,139,202);
		font-size:18px;
		font-weight:500;
	}
	div.board_list section.button div,
	div.board_list section.paging div{
		margin:10px 27%;
	}
	div.board_list section.button div ul,
	div.board_list section.paging div ul{
		list-style:none;
	}
	div.board_list section.button div ul li a{
		text-decoration:none;
	}
	div.board_list section.button button ,
	div.board_list section.paging button {
		all:unset;
		color:black;
		background-color:white;
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_list section.button button:hover {
		all:unset;
		color:rgb(66,139,202);
		background-color:rgb(238,238,238);
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_list section.button button.btn_all {
		all:unset;
		color:white;
		background-color:rgb(66,139,202);
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_list section.list table{
		border:1px solid #CCC;
		border-collapse:collapse;
		margin:25px auto;

	}
	div.board_list section.list table tr:first-child td{
		font-size:15px;
		font-weight:600;
		color:black;
		padding: 5px 13px;
	}
	div.board_list section.list table tr td{
		border:1px solid #CCC;
		border-collapse:collapse;
		padding:5px 15px;
		color:rgb(66,139,202);
	}
	div.board_list section.list table tr td a{
		text-decoration:none;
		color:rgb(66,139,202);
	}
	div.board_list section.list table tr td a:hover{
		text-decoration:underline;
	}
	div.board_list section.paging button {
		border:1px solid #CCC;
		height:30px;
		margin:15px -4px;
		padding:0 15px;
		font-size:13px;
		font-weight:500;
		color:gray;
	}
	div.board_list section.paging button:hover{
		border:1px solid rgb(66,139,202);
		background-color:rgb(66,139,202);
		color:white;
		height:30px;
		margin:15px -4px;
		padding:0 15px;
		font-size:13px;
		font-weight:500;
	}
	div.board_list section.paging button:nth-child(2){
		background-color:rgb(66,139,202);
		border:1px solid rgb(66,139,202);
		color:white;
	}
	div.board_list section.search div{
		margin:10px 35%;
	}
	div.board_list section.search div select{
		width:100px;
		height:35px;
		padding-left:10px;
		border: 1px solid #CCC;
	}
	div.board_list section.search div input[type=text]{
		width:200px;
		height:31px;
		border: 1px solid #CCC;
	}
	div.board_list section.search div button{
		all:unset;
		width:45px;
		height:33px;
		color:white;
		font-size:15px;
		text-align:center;
		background-color:rgb(66,139,202);
	}
	hr{
		border:1px solid rgb(66,139,202);
		background-color:rgb(66,139,202);
		width:80px;
		margin:0 46%;
	}
	
</style>
<body>
	<div class="board_list">
	  <div class="title"> 게시판 </div><hr>	
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
		<section class="list">
				<table class="board_list">
					<tr>
						<td>제목</td>
						<td>카테고리</td>
						<td>글쓴이</td>
						<td>댓글</td>
						<td>좋아요</td>
						<td>작성일</td>
					</tr>
					<tr>
						<td><a href="board_content.do">알고리즘 질문드립니다.</a></td>
						<td>질문</td>
						<td>aaa123</td>
						<td>0</td>
						<td>2</td>
						<td>5분전</td>
					</tr>
					<tr>
						<td><a href="board_content.do">질문 글을 지우지 말아주세요.</a></td>
						<td>오타/오역/요청</td>
						<td>manager00</td>
						<td>19</td>
						<td>543</td>
						<td>2년전</td>
					</tr>
				</table>
		</section>
		<section class="paging">
			<div>
				<ul>
					<li>
						<button>처음</button>
						<button>1</button>
						<button>2</button>
						<button>3</button>
						<button>4</button>
						<button>5</button>
						<button>6</button>
						<button>7</button>
						<button>8</button>
						<button>9</button>
						<button>10</button>
						<button>마지막</button>
					</li>
				</ul>		
			</div>
		</section>
		<section class="search">
			<div>
				<select>
					<option>전체</option>
					<option>제목</option>
					<option>작성자</option>
				</select>
				<input type="text">
				<button type="button">검색</button>
			</div>
		</section>
	</div>
</body>
</html>