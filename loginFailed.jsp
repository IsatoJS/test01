<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スケジュール管理システム</title>
</head>
	<body>
		<h1>ログイン結果画面</h1>
		<% if(loginUser != null) { %>
		<p>ログインに成功しました</p>
		<p>ようこそ<%= loginUser.getUser_name() %>さん</p>
		<a href="/scheduleManeger/Main">メイン画面へ</a>
		<% } %>
	</body>
</html>