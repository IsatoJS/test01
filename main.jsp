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
<link href='css/fullcalendar.min.css' rel='stylesheet' />
<link href='css/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='lib/moment.min.js'></script>
<script src='lib/jquery.min.js'></script>
<script src='js/fullcalendar.min.js'></script>
<script src='js/ja.js'></script>
<title>スケジュール管理システム</title>
</head>
<script>
    $(document).ready(function() {
        $('#calendar').fullCalendar({
        	height: 530,
        	editable: true,

        	events: [
        		{
        	    	url: '/scheduleManeger/Calendar'
        	     }
        		],

        	dayClick: function(date, allDay, jsEvent, view){
        		var title = prompt('予定を入力してください：');

        		$('#calendar').fullCalendar('addEventSource', [{
        			id:date,
        			title: title,
        			start: date,
        			allDay: allDay
        		}]);
    		},

    		eventClick: function(event){
    			var title = prompt('予定を更新してください：');

    			if(title && title!=""){
    				event.title = title;
    				$('#calendar').fullCalendar('updateEvent', event);
    				}else{
    				$('#calendar').fullCalendar("removeEvents", event.id);
    				}

        	}
        });
    });
</script>

<style>
  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1000px;
    margin: 0 auto;
  }
  .fc-sun, .fc-sat{
  	color:#FF0000;
  }
</style>
	<body>
		<h1>メイン画面</h1>
		<% if(loginUser != null) { %>
		<p>ようこそ<%= loginUser.getUser_name() %>さん</p><br>
		<div id='calendar'></div><br>
		<a href="/scheduleManeger/Logout">ログアウト</a>
		<% } else{ %>
		<p>「ID」または「パスワード」が違います</p>
		<a href="/scheduleManeger/">TOP画面へ戻る</a>
		<% } %>
	</body>
</html>