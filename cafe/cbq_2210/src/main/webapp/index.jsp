<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray;">
		<h3 style="text-align: center">GSM 카페에 오신 것을 환영합니다</h3>
		<p style="margin-left: 20px">
			1. 이 프로그램은 GSM 학생들을 위한 카페 프로그램입니다. <br>
			2. 조회부터 수정, 삽입, 삭제까지 모두 다 연습해봅시다. <br>
			3. select는 executeQuery(), 그 외(insert, update, delete)는 executeUpdate() 함수 사용
		</p>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>