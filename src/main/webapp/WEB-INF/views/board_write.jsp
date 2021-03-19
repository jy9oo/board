<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 작성</title>
</head>
<style>
	div.board_write {
		margin:50px auto;
	}
	div.board_write section.button div{
		margin:10px 27%;
	}
	div.board_write section.button div ul{
		list-style:none;
	}
	div.board_write section.button div ul li a{
		text-decoration:none;
	}
	div.board_write section.button button{
		all:unset;
		color:black;
		background-color:white;
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_write section.button button:hover {
		all:unset;
		color:rgb(66,139,202);
		background-color:rgb(238,238,238);
		width:auto;
		height:40px;
		padding:0 10px;
	}
	div.board_write section.button button.btn_write {
		all:unset;
		color:white;
		background-color:rgb(66,139,202);
		width:auto;
		height:40px;
		padding:0 10px;
	}
	
	div.board_write section.title{
		display:block;
		float:left;
		margin:0 20px 0 50px;
	}	
	div.board_write section.title div ul li{
		text-align:right;
	}
	div.board_write section.title div ul li:first-child{
		padding-top:7px;
	}
	div.board_write section.title div ul li:nth-child(2),
	div.board_write section.title div ul li:nth-child(3),
	div.board_write section.title div ul li:nth-child(4),
	div.board_write section.title div ul li:nth-child(6){
		padding-top:16px;
	}
	div.board_write section.title div ul li:nth-child(5){
		padding-top:485px;
	}
	div.board_write section.content{
		display:block;
		border:1px solid white;
	}	
	div.board_write section.title div ul,
	div.board_write section.content div ul{
		list-style:none;
	}
	div.board_write section.title div ul li,
	div.board_write section.content div ul li{
		margin:15px auto;
		font-size:14px;
		font-weight:600;
	}
	div.board_write section.content div ul li input[type=text],
	div.board_write section.content div ul li select,
	div.board_write section.content div ul li textarea{
		border:1px solid #CCC;
		height:30px;
	}
	div.board_write section.content div ul li:first-child input[type=text]{
		width:400px;
	}
	div.board_write section.content div ul li:nth-child(2) select,
	div.board_write section.content div ul li:nth-child(5) select{
		width:120px;
		padding-left:10px;
		height:35px;
	}
	div.board_write section.content div ul li:nth-child(3) input[type=text]{
		width:60px;
	}
	div.board_write section.content div ul li:nth-child(4) input[type=text]{
		width:900px;
		height:500px;
	}
	div.board_write section.content div ul li:nth-child(6) textarea{
		width:900px;
		height:200px;
	}
	div.board_write section.content div ul li:nth-child(7) button{
		all:unset;
		color:white;
		background-color:rgb(66,139,202);
		width:auto;
		height:35px;
		padding:0 15px;
		margin-left:130px;
	}
</style>
<body>
		<div class="board_write">
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
			<section class="title">
				<div>
					<ul>
						<li>제목</li>
						<li>카테고리</li>
						<li>문제 번호</li>
						<li>내용</li>
						<li>언어</li>
						<li>소스 코드</li>
					</ul>
				</div>
			</section>
			<section class="content">
				<div>
					<ul>
						<li>
							<input type="text">
						</li>
						<li>
							<select>
								<option>자유</option>
								<option>질문</option>
								<option>오타/오역/요청</option>
								<option>홍보</option>
							</select>
						</li>
						<li><input type="text"></li>
						<li><input type="text"></li>
						<li>
							<select>
								<option>C++17</option>
								<option>Python3</option>
								<option>C99</option>
								<option>Java 11</option>
							</select>
						</li>
						<li><textarea></textarea></li>
						<li><button>글쓰기</button></li>
					</ul>
				</div>
			</section>
		</div>
</body>
</html>