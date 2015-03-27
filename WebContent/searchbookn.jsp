<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*,java.io.*,java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>比价网欢迎您！</title>

<script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
<script src="js/jquery.backgroundpos.js" type="text/javascript"></script>
<script src="js/menu.js" type="text/javascript"></script>

<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link href="css/fenye.css" rel="stylesheet" type="text/css" />
<link href="css/homepage.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/menu-serachbookn.css" type="text/css" />
<script type="text/javascript">
	function jump()
	{		
		var obj=document.getElementById("option");
		var index=obj.selectedIndex;
		var value=obj.options[index].value;
		var str=document.getElementById("inputtext").value;
		//alert(str);
		if(value==1)
			window.location.href="searchbookn.jsp?str="+str;
		else
			window.location.href="searchauthor.jsp?str="+str;	
		
	}
</script>
</head>

<body>
<%!
int totalSize,maxSize=8,pageCount;
%>
<%
	request.setCharacterEncoding("utf-8");
	String str=new String(request.getParameter("str"));	
	String driverName = "com.mysql.jdbc.Driver";  	
	String userName = "qzc";
	String userPasswd = "123456";
	String dbName = "qin";  
	String tableName = "books";  
	String url = "jdbc:mysql://123.com:3306/" + dbName + "?useUnicode=true&characterEncoding=UTF-8&user="  
            + userName + "&password=" + userPasswd;  
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    Connection connection = DriverManager.getConnection(url);  
    Statement statement = connection.createStatement();  
    //String str2 = new String(str.getBytes("iso-8859-1"), "utf-8");
    //String sql = "SELECT * FROM books_view where name='"+str+ "' or name like '%"+str+"%' and name !='"+str+"'";
    String sql = "SELECT * FROM books where name like'"+str+ "%' and price !=''";
    ResultSet rs = statement.executeQuery(sql);    
	//out.println(str);
	//out.println(sql);
	
%>
	<div class="main">
		<div class="content1">
			<div class="shop-car1">
				<img src="images/logo.png" width="65" height="56" />
			</div>
			<div class="bijia1">
				<img src="images/bijiawang.png" width="121" height="45" />
			</div>
			<!--以下为登陆注册-->
			<div class="denglu2">
				<ul class="menu">
					<li><a href="http://www.divcss5.com/">欢迎 !</a></li>
					<li class="zfjg"><a href="homepagetab.jsp">首页</a></li>
					<li class="li_3"><a class="noclick" href="#" target="_blank">晕车一族</a>
						<dl class="li_3_content">
							<dt></dt>
							<dd>
								<a href="#" target="_blank"><span>个人中心</span></a>
							</dd>
							<dd>
								<a href="homepage.aspx" target="_blank"><span>退出</span></a>
							</dd>

						</dl></li>

				</ul>
			</div>
			<!--以上为登陆注册-->
		</div>
		<!--search -->
	<!--  	<div class="search1">
			<select name="option" class="select1">
				<option>&nbsp;&nbsp;搜书名</option>
				<option>&nbsp;&nbsp;搜作者</option>
			</select><input id="inputtext" class="input1" type="text" title="searchs"
				name="input" />
			<button type="submit" class="button2" />
			</button>
		</div>  -->
		<div class="search1">
			<select id="option" name="option" class="select1">
				<option value="1"  selected="selected" >按书名搜</option>
				<option value="2">按作者搜</option>
			</select>
			 <input id="inputtext" class="input" onkeydown="jump()"  type="text" title="searchs" value="<%=str%>"
				name="input" />
		<!--	<button type="submit" class="button1" onclick="jump()"/></button> -->
			<input type="button"  class="button1" onClick="jump()"/>
		</div>
		<div>&nbsp;&nbsp;</div>
		<% 
			rs.last();
			totalSize=rs.getRow();
			pageCount=(totalSize%maxSize==0)?(totalSize/maxSize):(totalSize/maxSize+1);
			int count=0,curPage;
			String tmp=request.getParameter("curPage");
			if(tmp==null)
					tmp="1";
			curPage=Integer.parseInt(tmp);
			//out.println(curPage);			
			//out.println(totalSize);
			if(curPage<1)
				curPage=1;
			else if(curPage>pageCount)
				curPage=pageCount;		
			//out.println(pageCount);
			//out.println(curPage);			
			rs.absolute((curPage-1)*maxSize+1);			
	   %>
		<div class="div02">《<%=str %>》 共<%=totalSize %>条（<%=pageCount %>页）搜索结果 </div>
		<div class="list-result">
		
	   <%
	   		if(totalSize!=0)	
			do{
				count++;
				if(count>8) break;
		%>
			<div class="list-rel">
				<div class="listcont">
					<div class="picture">
					 <!-- 	<img src="/jd/images/abc.jpg" width="150" height="150" />-->					
						<a target="_blank" href="<%=rs.getString("url") %>"> <img  src="/book_images/<%
								if(rs.getInt("website")==1)
									out.print("amazon/"+rs.getString("image_name"));
								if(rs.getInt("website")==2)
									out.print("jd/images/"+rs.getString("image_name"));
								if(rs.getInt("website")==3)
									out.print("dd/images/"+rs.getString("image_name"));
							%>" width="150" height="150" /></a>
					</div>
					<div class="neir">
						<table width="90%">
							<tr>
								<td colspan="2">&nbsp;<%=rs.getString("name") %></td>

							</tr>
							<tr>
								<td width="24%">&nbsp;作者：</td>
								<td width="76%">&nbsp;<%=rs.getString("author") %></td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;
								<% 
									if(rs.getInt("website")==1)
										out.print("亚马逊");
									if(rs.getInt("website")==2)
										out.print("京东");
									if(rs.getInt("website")==3)
										out.print("当当");
								%></td>

							</tr>
							<tr>
								<td colspan="2" class="td-tit">&nbsp; <%=rs.getString("price") %></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<% }while(rs.next()); %>
<!--  			
			<div class="list-rel">
				<div class="listcont">
					<div class="picture">
						<img src="images/书.png" width="150" height="150" />
					</div>
					<div class="neir">
						<table width="100%">
							<tr>
								<td colspan="2">&nbsp;中文版photoshop CS6完全自学教程（附光盘）</td>

							</tr>
							<tr>
								<td width="24%">&nbsp;作者：</td>
								<td width="76%">&nbsp;李金明</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;亚马逊</td>

							</tr>
							<tr>
								<td colspan="2" class="td-tit">&nbsp; ￥： 63.50</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="list-rel">
				<div class="listcont">
					<div class="picture">
						<img src="images/书.png" width="150" height="150" />
					</div>
					<div class="neir">
						<table width="100%">
							<tr>
								<td colspan="2">&nbsp;中文版photoshop CS6完全自学教程（附光盘）</td>

							</tr>
							<tr>
								<td width="24%">&nbsp;作者：</td>
								<td width="76%">&nbsp;李金明</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;亚马逊</td>

							</tr>
							<tr>
								<td colspan="2" class="td-tit">&nbsp; ￥： 63.50</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="list-rel">
				<div class="listcont">
					<div class="picture">
						<img src="images/书.png" width="150" height="150" />
					</div>
					<div class="neir">
						<table width="100%">
							<tr>
								<td colspan="2">&nbsp;中文版photoshop CS6完全自学教程（附光盘）</td>

							</tr>
							<tr>
								<td width="24%">&nbsp;作者：</td>
								<td width="76%">&nbsp;李金明</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;亚马逊</td>

							</tr>
							<tr>
								<td colspan="2" class="td-tit">&nbsp; ￥： 63.50</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="list-rel">
				<div class="listcont">
					<div class="picture">
						<img src="images/书.png" width="150" height="150" />
					</div>
					<div class="neir">
						<table width="100%">
							<tr>
								<td colspan="2">&nbsp;中文版photoshop CS6完全自学教程（附光盘）</td>

							</tr>
							<tr>
								<td width="24%">&nbsp;作者：</td>
								<td width="76%">&nbsp;李金明</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;亚马逊</td>

							</tr>
							<tr>
								<td colspan="2" class="td-tit">&nbsp; ￥： 63.50</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="list-rer">
				<div class="qust_contach">
					<a href="javascript:void(0);" class="qst_close icon">&nbsp;</a> <br
						class="clear">
						<ul>
							<li style="border-top: none">
								<p>
									<span class="icon zixun"></span>广告招商咨询
								</p> <b>工作日：9:00-17:30</b> <a target="_blank"
								href="http://www.liuyanbao.net"><img border="0"
									src="images/group.png" alt="留言宝" title="留言宝"></a>
							</li>
							<li>
								<p>
									<span class="icon yuyue"></span>预约广告专员
								</p> <b>提供一对一解决方案</b> <a target="_blank"
								href="http://www.liuyanbao.net"><img border="0"
									src="images/group.png" alt="留言宝" title="留言宝"></a>
							</li>
							<li>
								<p>
									<span class="icon tijian"></span>免费试用体验
								</p> <b>&nbsp;立即进入体验中心</b> <a href="http://www.liuyanbao.net"
								target="_blank" title="免费网站体检" class="icon tj_btn">我要体验</a>
							</li>
							<li>
								<p>
									<span class="icon suces"></span>成功案例
								</p>
								<div class="suces_btn" style="margin-top: 2px;">
									<a href="http://www.liuyanbao.net" target="_blank" title="建站案例"
										class="icon">广告案例</a> <a href="http://www.liuyanbao.net"
										target="_blank" title="推广案例" class="icon"
										style="margin-left: 3px;">推广案例</a> <br class="clear" />
								</div>
							</li>
							<li>
								<p>
									<span class="icon shouqian"></span>售前咨询
								</p> <b><a target="_blank" href="http://www.liuyanbao.net"><img
										border="0" src="images/group.png" alt="留言宝" title="留言宝"></a></b>
							</li>
							<li>
								<p>
									<span class="icon shouhou"></span>售后咨询
								</p> <b><a target="_blank" href="http://www.liuyanbao.net"><img
										border="0" src="images/group.png" alt="留言宝" title="留言宝"></a></b>
							</li>
							<li id="toTop"
								style="border-bottom: none; height: 0px; overflow: hidden; cursor: pointer;">
								<a href="javascript:void(0);" class="back_top icon">&nbsp;</a>
							</li>
						</ul>
				</div>
				<div class="qust_show" style="display: none;">
					<a href="javascript:void(0);"> <span class="icon server"></span><br />

						<span>广</span><br /> <span>告</span><br /> <span>招</span><br /> <span>商</span><br />
						<span>咨</span><br /> <span>询</span><br />
					</a>
				</div>
				<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
				<script type="text/javascript" src="js/contact.js"></script>
				<div style="text-align: center; clear: both"></div>
			</div>
			
-->
		</div>

		<div class="black">			
		<!-- 	<a href="#?curPage=<%=curPage-1%>">&lt;</a>
		<a href="#"> &gt; </a>
		 -->
		    <a href="searchbookn.jsp?str=<%=str %>">首页</a>								
			<a href="searchbookn.jsp?str=<%=str %>&curPage=<%=curPage-1 %>">上一页</a>
			<span class="current"><%=curPage%></span>
			<a href="searchbookn.jsp?str=<%=str %>&curPage=<%=curPage+1 %>">下一页</a>
			<a href="searchbookn.jsp?str=<%=str %>&curPage=<%=pageCount %>">尾页</a>			
			
		</div>


	</div>

</body>
</html>

