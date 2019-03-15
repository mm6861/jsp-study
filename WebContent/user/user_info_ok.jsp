<%@page import="java.sql.ResultSet"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
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
String uiName = request.getParameter("ui_name");
String uiId = request.getParameter("ui_id");
String uiAge = request.getParameter("ui_age");
String uiEtc = request.getParameter("ui_etc");

String sql = "insert into user_info";
sql += " (ui_num,ui_name,ui_id,ui_age,ui_etc)";
sql += " values(seq_ui_num.nextval,?,?,?,?)";


PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,uiName);
ps.setString(2,uiId);
ps.setString(3,uiAge);
ps.setString(4,uiEtc);
int cnt = ps.executeUpdate();
String result = "몰라! 안돼써!!";

if(cnt==1){
	result = "등록 잘 되었따.";
}

%>
<script>
	alert("<%=result%>");
	location.href="/jsp-study/user/user_info.jsp";
</script>
