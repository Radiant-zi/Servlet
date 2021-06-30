<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String msg=(String)request.getAttribute("msg"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户注册</title>
    
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1 align="center">用户注册</h1>
    <hr/>
    <form action="<%=request.getContextPath()%>/register.user" method="post">
    <table border=0 height=130px align="center">
   	<tr>
   		<td align="center" width=80px>用户名：</td>
	  		<td align="center" width=80px>
			<input type="text" name="username" />
	  		</td>
   	</tr>
   	<tr>
   		<td align="center" width=80px>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
	  		<td align="center" width=80px>
			<input type="password" name="password"/>
	  	</td>
   	</tr>
   	<tr>
		<td align="center" colspan="2">
			<input type="submit" value="注册">
		</td>
	</tr>
    	</table>
    </form>
  </body>
  <br>
  <h1 style="color: red;"><%=msg!=null?msg:"" %></h1>
  <p style="text-align: center"><a href="<%=request.getContextPath()%>/show.goods">返回</a></p>
</html>
