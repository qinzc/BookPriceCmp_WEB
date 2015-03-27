<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*,java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
 	String name=request.getParameter("t_UserName");
	String passwd=request.getParameter("t_UserPass");
	String email=request.getParameter("t_Email");
	//out.println(name);
	//out.println(passwd);
	String url="jdbc:mysql://123.com:3306/qin?useUnicode=true&characterEncoding=UTF-8&user=qzc&password=123456";
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection=DriverManager.getConnection(url);
	Statement statement=connection.createStatement();
	String selectstr="select *  from  qin.users where u_name='"+name+"';";
	ResultSet rs=statement.executeQuery(selectstr);
	rs.last();
	int checkExist=rs.getRow();
	if(checkExist==0){
	String sql="insert  qin.users (u_name,u_passwd,u_email) values ('"+name+"','"+passwd+ "','" +email+"');";
	//out.println(url);
	//out.println(sql);
	int boolvalue=statement.executeUpdate(sql);
	//out.println(boolvalue);
	if(boolvalue==1){
		out.println("注册成功,请返回登录");
}
}
	else {
		out.println("该用户名已存在！");
%>
	<a href="reg.jsp"><input type="button" value="返回注册页面" ></a>
<%
}
%>

</body>
</html>