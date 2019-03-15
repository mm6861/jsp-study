<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
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
request.setCharacterEncoding("utf-8");
Map<String,String[]> map = request.getParameterMap();

String id = request.getParameter("id");
String name = request.getParameter("name");
String content = request.getParameter("content");
String credat = request.getParameter("credat");
String trans = request.getParameter("trans");
Set<String> keys = map.keySet();
Iterator<String> it = keys.iterator();
while(it.hasNext()){
	String key = it.next();
	String[] values = map.get(key);
	out.write(key+" : " +values[0]+"<br>");
}
//if(id!=null){
	//out.print(id+"<br>");
	//out.print(name+"<br>");
	//out.print(credat+"<br>");
	//out.print(trans+"<br>");
	//out.print(content+"<br>");
//}

%>
<a href="/jsp-study/req/param.jsp">돌아가기</a>
</body>
</html>