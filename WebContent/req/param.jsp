<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,String[]> map = request.getParameterMap();
String[] ids = map.get("id");
String id = request.getParameter("id");
String name = request.getParameter("name");
String credat = request.getParameter("credat");
String trans = request.getParameter("trans");
String content = request.getParameter("content");
if(ids!=null){
	out.write(ids[0]+"<br>");
	out.write(id+"<br>");
	out.write(name+"<br>");
	out.write(credat+"<br>");
	out.write(trans+"<br>");
	out.write(content+"<br>");
}
%>
<form method="get" action="/jsp-study/req/param_ok.jsp">
	<input type="text" name="id" value="redfila"><br>
	<input type="text" name="name" value="홍길동"><br>
	<input type="text" name="credat" value="2019-03-14"><br>
	<select name="trans">
		<option value="m">남자</option>
		<option value="w">여자</option>
	</select><br>
	<textarea name="content" cols="50" rows="10"></textarea><br>
	<button>전송</button>
	
</form>
</body>
</html>