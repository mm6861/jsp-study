<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form method="post" action="/jsp-study/req/user_insert_ok.jsp">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="ui_id"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="ui_name"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="number" name="ui_age"></td>
			</tr>
			<tr>
				<th>비고</th>
				<td><textarea name="ui_etc"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>
			</tr>
		</table>
	</form>

</body>
</html>