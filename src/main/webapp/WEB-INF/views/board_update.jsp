<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 작성</title>
</head>
<body>
		<div class="board_write">
			<ul>
				<li>
					<div>제목</div>
					<input type="text">
				</li>
				<li>
					<div>카테고리</div>
					<select>
						<option>자유</option>
						<option>질문</option>
						<option>오타/오역/요청</option>
						<option>홍보</option>
					</select>
				</li>
				<li>
					<div>문제번호</div>
					<input type="text">
				</li>
				<li>
					<div>내용</div>
					<input type="text">
				</li>
				<li>
					<div>언어</div>
					<select>
						<option>C++17</option>
						<option>Python3</option>
						<option>C99</option>
						<option>Java 11</option>
					</select>
				</li>
				<li>
					<div>소스 코드</div>
					<textarea></textarea>
				</li>
			</ul>
			<button type="button">글쓰기</button>
		</div>
</body>
</html>