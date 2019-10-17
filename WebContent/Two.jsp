<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>2.0</title>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<style>
body{
	background-color:rgba(0,0,255,0.3);
}
#box{
	width:1600px;
	height:900px;
	margin:100px auto;
}
.row{
	width:1600px;
	height:298px;
	margin:2px 0;
}
.clo{
	width:395px;
	height:298px;
	background-color:#fff;
	float:left;
	margin:0 2px;
}
img{
	margin:30px 47px 0 47px;
}
.money{
	margin:0 47px;
	color:orange;
	font-size:20px;
	font-weight:bold;
}
.email{
	background-color:red;
}
.font1{
	margin:0 47px;
	font-size:16px;
}
a{
	text-decoration:none;
	color:#000;
}
p a:hover{
	text-decoration:underline;
}
.font2{
	font-size:12px;
	margin:0 47px;
	color:gray;
	text-decoration:underline;
}
.pay{
	margin:0 47px;
	font-size:12px;
	color:gray;
	float:right;
}
div .clo:hover{
	border:1px solid red;
}
</style>
</head>
<body>
	<div id="box">
	<div class="row">
		<div class="clo">
			<img src="images/phone01.png">
			<p class="money">￥1234&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要1234，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
		<div class="clo">
			<img src="images/phone01.png">
			<p class="money">￥4532&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要4532，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p></div>
		<div class="clo">
			<img src="images/phone01.png">
			<p class="money">￥4565&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要4565，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
		<div class="clo">
			<img src="images/phone01.png">
			<p class="money">￥6776&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要6776，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
	</div>
	<div class="row">
		<div class="clo">
			<img src="images/phone02.png">
			<p class="money">￥4584&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要4584，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
		<div class="clo">
			<img src="images/phone02.png">
			<p class="money">￥4552&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要4552，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p></div>
		<div class="clo">
			<img src="images/phone02.png">
			<p class="money">￥4568&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要4568，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
		<div class="clo">
			<img src="images/phone02.png">
			<p class="money">￥6458&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要6458，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
	</div>
	<div class="row">
		<div class="clo">
			<img src="images/phone03.png">
			<p class="money">￥6458&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要6458，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
		<div class="clo">
			<img src="images/phone03.png">
			<p class="money">￥1248&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要1248，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p></div>
		<div class="clo">
			<img src="images/phone03.png">
			<p class="money">￥5454&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要5454，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
		<div class="clo">
			<img src="images/phone03.png">
			<p class="money">￥7896&nbsp;&nbsp;&nbsp;<span class="email">包邮</span></p>
			<p class="font1"><a href="#">小米手机只要7896，带回家</a></p>
			<p class="font2">小米旗舰店<span class="pay">xx人付款</span></p>
		</div>
	</div>
</div>
</body>
</html>