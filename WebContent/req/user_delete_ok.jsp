<%@page import="java.sql.PreparedStatement"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String uiNum = request.getParameter("ui_num");
String sql = "delete from user_info where ui_num=?";

PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,uiNum);
int cnt = ps.executeUpdate();
String result = "삭제하려고 했는데 없는데??";
if(cnt==1){
	result = "삭제잘되었따.";
}


%>

<script>
alert("<%=result%>");
location.href="/jsp-study/req/user_list.jsp";
</script>