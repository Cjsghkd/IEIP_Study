<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.*" %>
   <%@page import="DBPKG.Utill" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출조회</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style="position: fixed; left:0px; top: 60px; width:100%; height: 100%; background-color: lightgray">
<h2 style="text-align: center"><b>회원매출조회</b></h2>
<form style=" display: flex; align-items: center; justify-content: center;
text-align: center">
<table border="1">
<tr>
	<td>회원번호</td>
	<td>회원성명</td>
	<td>고객등급</td>
	<td>매출</td>
</tr>


<%
Connection conn = null;
Statement stmt = null;
String grade="";

try{
	conn = Utill.getConnection();
	stmt = conn.createStatement();
	String sql = "select me.custno, me.custname, me.grade, sum(mo.price) price " +
				 "from member_tbl me, money_tbl mo " +
				 "where me.custno = mo.custno " +
				 "group by me.custno, me.custname, me.grade " +
				 "order by sum(mo.price) desc";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		grade = rs.getString("grade");
		switch(grade){
		case "A":
			grade = "VIP";
			break;
		case "B":
			grade = "일반";
			break;
		case "C":
			grade = "직원";
			break;
				
	    }
%>
		
<tr>
	<td><%=rs.getString("custno") %></td>
	<td><%=rs.getString("custname") %></td>
	<td><%=grade %></td>
	<td><%=rs.getString("price") %></td>
</tr>
<%
    }
}

catch(Exception e){
	e.printStackTrace();
}

%>


</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>