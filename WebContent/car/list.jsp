<%@page import="java.sql.ResultSet"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차목록</title>
</head>
<body>
<%
String carName = request.getParameter("car_name");
String carVendor = request.getParameter("car_vendor");
if(carName!=null){
%>
검색한 자동차이름 : <%=carName%><br>
검색한 자동차회사 : <%=carVendor%><br>
<%
}
%>
<form>
	자동차이름 : <input type="text" name="car_name">
	<br>
	자동차회사 : <input type="text" name="car_vendor">
	<br>
	<button>검색</button>
</form>
<%
String sql = "select CI_NUM, CI_NAME, CI_YEAR, CI_VENDOR, CI_ETC from car_info where 1=1";
if(carName!=null && !"".equals(carName)){
	sql += " and ci_name like '%'||?||'%'";
}
if(carVendor!=null && !"".equals(carVendor)){
	sql += " and ci_vendor=?";
}
sql += " order by ci_num";
try{
	PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
	int cnt = 1;
	if(carName!=null && !"".equals(carName)){
		ps.setString(cnt++,carName);
	}
	if(carVendor!=null && !"".equals(carVendor)){
		ps.setString(cnt++,carVendor);
	}
	ResultSet rs = ps.executeQuery();
	out.write("<table border='1'>");
	while(rs.next()){
		out.write("<tr>");
		out.write("<td>" + rs.getInt("car_num") + "</td>");
		out.write("<td><a href=\"/jsp-study/car/view.jsp?carNum="+rs.getInt("car_num")+"\">");
		out.write(rs.getString("car_name")+"</a></td>");
		out.write("<td>" + rs.getInt("car_year") + "</td>");
		out.write("<td><button onclick=\"carDelete(" + rs.getInt("car_num") + ")\">삭제</button></td>");
		out.write("</tr>");
	}
	out.write("</table>");
}catch(Exception e) {
	out.println(e);
}finally {
	DBCon.close();
}
%>

</body>
</html>