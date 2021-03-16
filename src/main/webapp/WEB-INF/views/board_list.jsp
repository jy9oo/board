<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
</head>
<body>
	<div class="board_list">
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
				</table>
		</section>
		<section class="paging">
			<div>처음 1 2 3 4 5 6 7 8 9 10 마지막</div>
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