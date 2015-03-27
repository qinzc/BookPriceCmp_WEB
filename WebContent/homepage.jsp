<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>比价网欢迎您！</title>
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/jquery.XYTipsWindow.min.2.8.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#login").click(function() {
			$.XYTipsWindow({
				___title : "登录",
				___content : "iframe:login.jsp",
				___width : "460",
				___height : "150",
				___showbg : true,
				___drag : "___boxTitle"
			});
		});

		$("#reg").click(function() {
			$.XYTipsWindow({
				___title : "注册",
				___content : "iframe:reg.jsp",
				___width : "460",
				___height : "450",
				___showbg : true,
				___drag : "___boxTitle"
			});
		});

	})
</script>
<script type="text/javascript">
	function jump()
	{		
		var obj=document.getElementById("option");
		var index=obj.selectedIndex;
		var value=obj.options[index].value;
		var str=document.getElementById("inputtext").value;
		if(value==1)
			window.location.href="searchbookn.jsp?str="+str;
		else
			window.location.href="searchauthor.jsp?str="+str;	
		
	}
</script>

<link href="css/box_style.css" type="text/css" rel="stylesheet" />

<link href="css/front.css" media="screen, projection" rel="stylesheet"
	type="text/css">
<link href="css/homepage.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div class="main">

		<div class="content">
			<div class="caidan">
				<div class="caidanl">
					<img src="images/menulogo.png" width="29" height="30" />
				</div>
				<div class="caidanr">帮助</div>
			</div>


			<div class="shop-car">
				<img src="images/logo.png" width="119" height="105" />
			</div>
			<div class="bijia">
				<img src="images/bijiawang.png" width="192" height="73" />
			</div>
			<!--以下为登陆注册-->
			<div class="denglu">
				<span id="login" class="loginb">登录</span>&nbsp;&nbsp;|&nbsp;&nbsp; <span
					id="reg" class="loginb">注册</span>
			</div>
			<!--以上为登陆注册-->
		</div>
		<!--search -->
		<div class="search">
			<select id="option" name="option" class="select">
				<option value="1">按书名搜</option>
				<option value="2">按作者搜</option>
			</select>
			 <input id="inputtext" onkeydown="jump()" class="input" type="text" title="searchs"
				name="input" />
		<!--	<button type="submit" class="button1" onclick="jump()"/></button> -->
			<input type="button"  class="button1" onClick="jump()"/>
		</div>



		<div class="div0">
			<div class="bookl">
				<div class="pp">
					最美的童诗·童谣·童话<br />
					<span class="pp1">最美的新年礼物</span>
				</div>
				<div class="pic">
					<img src="images/book2.png" width="203" height="259" />
				</div>
			</div>
			<!--以下为图书右边-->
			<div class="bookr">
				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>
				</div>

				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>
				</div>

				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>
				</div>

				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>
				</div>

				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>
				</div>
				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>
				</div>
				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>
				</div>
				<div class="book1">
					<div>
						<img src="images/book.png" width="150" height="150" />
					</div>
					<div class="price1">
						<a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a>
					</div>

				</div>
			</div>

			<!--以上为图书右边-->
		</div>

	</div>
	<div class="foot">比价网 | Copyright ©计科1102-秦正才课设小组. All Rights
		Reserved. | 2015-01</div>
</body>
</html>
