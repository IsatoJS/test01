<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スケジュール管理システム</title>
</head>
	<body>
		<h1>ログイン画面</h1>
		<form action="/scheduleManeger/Login" method="post">
			ID：<input type="text" name="id"><br>
			パスワード：<input type="text" name="pass"><br>
			<input type="submit" value="ログイン">
		</form>
	</body>
</html>