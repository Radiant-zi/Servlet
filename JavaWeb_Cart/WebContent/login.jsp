<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户登录</title>
  </head>
 <%
String msg = (String)request.getAttribute("msg");
if(msg != null) {
%>
<script type="text/javascript" language="javascript">
alert("<%=msg%>");
window.location='login.jsp';
</script> 
<%
}
%>
  <body>
   <h1 align="center">用户登录</h1>
   <hr/>
   <form action="<%=request.getContextPath()%>/login.user" method="post">
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
			<input type="reset" value="重置">
			<input type="submit" value="登录">
		</td>
	</tr>
  	</table>
   	</form>
   	<p style="text-align: center"><a href="<%=request.getContextPath()%>/show.goods">返回</a></p>
  	</body>
</html>
