<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*,java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%
String name=request.getParameter("t_UserName");
String passwd=request.getParameter("t_UserPass");
if(name != null && passwd !=null){
	String url="jdbc:mysql://123.com:3306/qin?useUnicode=true&characterEncoding=UTF-8&user=qzc&password=123456";
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection=DriverManager.getConnection(url);
	Statement statement=connection.createStatement();
	String selectstr="select *  from  qin.users where u_name='"+name+"' and u_passwd='"+passwd+"';" ;
	ResultSet rs=statement.executeQuery(selectstr);
	rs.last();
	int checkExist=rs.getRow();
	if(checkExist==1){		
		out.println("登录成功,请返回主页");			
	}
	else if(checkExist==0){
%>		
	用户名或密码错误
	<a href="login.jsp"><input type="button" value="返回登录页面" ></a>
<%		
	}
}
%>
</body>
</html>