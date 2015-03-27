<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>比价网欢迎您！</title>

<link href="css/front.css" media="screen, projection" rel="stylesheet" type="text/css" />
<link href="css/homepage.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/menu.css" type="text/css" />
<link rel="stylesheet" href="css/tab.css" type="text/css" />
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
    <script src="js/jquery.backgroundpos.js" type="text/javascript"></script>
    <script src="js/menu.js" type="text/javascript"></script>
     <script src="js/tab.js" type="text/javascript"></script>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/resetjquery.js"></script>
<script type="text/javascript">
    var jQuery_1_8_2 = $.noConflict(true);
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
</head>
<body>
<div class="main">

<div class="content">
  <div class="caidan">
<div class="caidanl">
<img src="images/menulogo.png" width="29" height="30" /></div><div class="caidanr">帮 助</div>
</div>



<div class="shop-car"><img src="images/logo.png" width="119" height="105" /></div>
<div class="bijia"><img src="images/bijiawang.png" width="192" height="73" /></div>
<!--以下为登陆注册-->
<div class="denglu1">
<ul class="menu">
    <li class="zfjg"  ><a href="http://www.divcss5.com/">欢迎你！</a></li>
   
    <li class="li_3"><a class="noclick" href="#" target="_blank">晕车一族</a>
        <dl class="li_3_content">
            <dt></dt>
            <dd><a href="#" target="_blank"><span>个人中心</span></a></dd>
            <dd><a href="homepage.jsp" target="_blank"><span>退出</span></a></dd>
            
        </dl>
    </li>
   
</ul>
</div>
<!--以上为登陆注册-->
</div>
<!--search -->
<div class="search">
<select id="option" name="option" class="select">
<option value="1">&nbsp;&nbsp;搜书名</option>
<option value="2">&nbsp;&nbsp;搜作者</option>
</select>
<input id="inputtext" onkeydown="jump()" class="input" type="text" title="searchs" name="input"/>
<button  type="submit" class="button1" onclick="jump()" >
</button>
</div>
<div> <br /><br /></div>
<div id="divcss5">
	<ul class="nav">
    	<li class="nav_current" id="nav1" onMouseOver="javascript:doClick(this)">
    	<a href="#">本周推荐</a>
    	</li>
        <li class="nav_link" id="nav2" onMouseOver="javascript:doClick(this)">
        <a href="#">浏览历史</a>
        </li>
       
       
    </ul>
    <div class="nav-down">
    <div class="div0 dis" id="sub1"> 
<div class="bookll">
<div class="pp">最美的童诗·童谣·童话<br /><span class="pp1">最美的新年礼物</span>
</div>
<div class="pic"><img src="images/book2.png" width="203" height="259" /></div></div>
<!--以下为图书右边-->
<div class="bookr">
<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
 <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
</div>

<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
  <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
</div>

<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
  <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
</div>

<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
  <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
</div>

<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
   <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
</div>
<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
 <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
</div>
<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
   <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
</div>
<div class="book1">
<div>
  <img src="images/book.png" width="150" height="150" /></div>
  <div class="price1"><a href="#"><span class="book-n">￥ 50.00</span><br />羊毛战记</a></div>
  
</div>
</div>

<!--以上为图书右边-->
</div>

    <div class="undis" id=sub2>
   <div class="contentg links">
    <div class="links_list"><a class="link_prev" href="javascript:;" hidefocus="true" title="上一组" id="link_prev">上一组</a>
        <div id="links">
            <ul id="slideContainer" class="slideContainer" >
               
               <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
                <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
                <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
                <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
                <li><a href="#"><img src="images/book.png"/></a></li>
                <li><a href="#"><img src="images/book.png"></a></li>
               <li><a href="#"><img src="images/book.png"></a></li>
            </ul>
        </div>
        <a class="link_next" href="javascript:;" hidefocus="true" title="下一组" id="link_next">下一组</a> </div>
</div>
    
   </div>
  <script>      jQuery_1_8_2(function ($) {
          $('div.pro_box').hover(function () {
              $(this).toggleClass('pro_box_hover')
          });
          //c的值为每次滚动数
          var slideContainer = $('#slideContainer'), c = 1, s_w = 164 * c, counts_l = 0, counts_r = 0, maxCounts = slideContainer.find('li').size() - 0, gameOver = true, slideCounts = 7, sTimer;
          $('#link_prev').on('click', function () {
              clearInterval(sTimer);
              if (gameOver) {
                  gameOver = false;
                  counts_l++;
                  slideContainer.animate({
                      left: '+=' + s_w
                  }, 500, function () {
                      gameOver = true;
                      slideContainer.animate({
                          left: '-=' + s_w
                      }, 0);
                      var html = '';
                      slideContainer.find('li:gt(' + (maxCounts - c - 1) + ')').each(function () {
                          html += '<li>' + $(this).html() + '</li>';
                      });
                      slideContainer.find('li:gt(' + (maxCounts - c - 1) + ')').remove();
                      slideContainer.html(html + slideContainer.html());
                  });
              }
          });
          $('#link_next').on('click', function () {
              clearInterval(sTimer);
              link_next_event();
          });

          function link_next_event() {
              if (gameOver) {
                  gameOver = false;
                  counts_r++;
                  slideContainer.animate({
                      left: '-=' + s_w
                  }, 500, function () {
                      gameOver = true;
                      slideContainer.animate({
                          left: '+=' + s_w
                      }, 0);
                      slideContainer.find('li:lt(' + c + ')').clone().appendTo(slideContainer);
                      slideContainer.find('li:lt(' + c + ')').remove();
                  });
              }
          }

          lastCLiHtml();
          slideContainer.find('li:gt(' + (maxCounts - 1) + ')').remove();
          function lastCLiHtml() {
              var html = '';
              slideContainer.find('li:gt(' + (maxCounts - c - 1) + ')').each(function () {
                  html += '<li>' + $(this).html() + '</li>';
              });
              slideContainer.html(html + slideContainer.html()).css({
                  'margin-left': -s_w + 'px'
              });
          }

          var l_hover = false, m_hover = false, r_hover = false;
          $('#links').on({
              'mouseover': function () {
                  m_hover = true;
                  clearInterval(sTimer);
              },
              'mouseout': function () {
                  m_hover = false;
                  isStartGo();
              }
          });

          $('#link_next, #link_prev').on('mouseout', function () {
              l_hover = false;
              r_hover = false;
              isStartGo();
          })
          $('#link_next, #link_prev').on('mouseover', function () {
              l_hover = true;
              r_hover = true;
              clearInterval(sTimer);
          })
          setInverterTimer();
          function setInverterTimer() {
              clearInterval(sTimer);
              sTimer = setInterval(function () {
                  link_next_event();
              }, 2000);
          }

          function isStartGo() {
              var st = setTimeout(function () {
                  if (!l_hover && !m_hover && !r_hover) {
                      setInverterTimer();
                  }
              }, 1000);
          }

      });</script> 
   
   
   
  </div>
 </div>  


</div>
<div class="foot">比价网 | Copyright ©计科1102-秦正才课设小组. All Rights Reserved. | 2015-01</div>
</body>
</html>



