<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	<form>
		ID : <input type="text" name="id"><br>
		Name : <input type="text" name="name"><br>
		Age : <input type="number" name="age"><br>
		ETC : <textarea name="etc" cols="50" rows="15"></textarea><br>
		<button>전송</button>
	</form>
 -->
<form method="post" action="/jsp-study/user/user_info_ok.jsp">
<table border="1" >
	<tr>
		<th>이름</th>
		<td><input type="text" name="ui_name"></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><input type="number" name="ui_age"></td>
	</tr>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="ui_id"></td>
	</tr>
	<tr>
		<th>기타정보</th>
		<td><textarea name="ui_etc" rows="15"></textarea></td>
	</tr>
	<tr >
		<th colspan="2"><button>유저등록</button></th>
	</tr>
</table>
</form> 
</body>
</html>