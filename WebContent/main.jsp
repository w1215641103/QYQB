<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>青宇钦彬系统主界面</title>
<%
	// 权限验证
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect("index.jsp");
		return;
	}
%>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		// 数据
		var treeData=[{
			text:"商品类别",
			children:[{
				text:"男装",
				attributes:{
					url:"Boy.jsp"
				}
			},{
				text:"女装",
				attributes:{
					url:"Girl.jsp"
				}
			},{
				text:"电器",
				attributes:{
					url:"Dian.jsp"
				}
			},{
				text:"玩具",
				attributes:{
					url:"Wan.jsp"
				}
			},{
				text:"鞋子",
				attributes:{
					url:"Xie.jsp"
				}
			},{
				text:"手机",
				attributes:{
					url:"Shou.jsp"
				}
			},{
				text:"宠物",
				attributes:{
					url:"Chong.jsp"
				}
			},{
				text:"游戏",
				attributes:{
					url:"Game.jsp"
				}
			},{
				text:"数码",
				attributes:{
					url:"Shu.jsp"
				}
			},{
				text:"2.0",
				attributes:{
					url:"Two.jsp"
				}
			}]
		}];
		
		// 实例化菜单
		$("#tree").tree({
			data:treeData,
			lines:true,
			onClick:function(node){
				if(node.attributes){
					openTab(node.text,node.attributes.url);
				}
			}
		});
		
		// 新增Tab
		function openTab(text,url){
			if($("#tabs").tabs('exists',text)){
				$("#tabs").tabs('select',text);
			}else{
				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
				$("#tabs").tabs('add',{
					title:text,
					closable:true,
					content:content
				});
			}
		}
	});
</script>
</head>
<body class="easyui-layout">
	<div region="north" style="height: 97px;background-color: #E0EDFF">
		<div align="left" style="width: 90%;float: left"><img src="images/logo.jpg"><img src="images/main.jpg">
			<ul style="float:right;">
				<li style="float:left;margin:30px 50px 10px 10px;list-style:none;"><a style="text-decoration:none;color:#000;" href="main.jsp">鲸鱼首页</a></li>
				<li style="float:left;margin:30px 50px 10px 10px;list-style:none;"><a style="text-decoration:none;color:#000;" href="http://wpa.qq.com/msgrd?v=3&uin=1617385338&site=qq&menu=yes">联系鲸鱼</a></li>	
				<li style="float:left;margin:30px 50px 10px 10px;list-style:none;"><a style="text-decoration:none;color:#000;" href="#">购物车</a></li>
				<li style="float:left;margin:30px 50px 10px 10px;list-style:none;"><a style="text-decoration:none;color:#000;" href="#">我的鲸鱼</a></li>
				<li style="float:left;margin:30px 70px 10px 10px;list-style:none;"><a style="text-decoration:none;color:#000;" href="index.jsp">退出鲸鱼</a></li>
			</ul>
		</div>
		<div style="padding-top: 40px;padding-right: 20px;">当前用户：&nbsp;<font color="red" >${currentUser.userName }</font></div>
	</div>
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页" >
				<div align="center" style="padding-top: 100px;">
					<font color="red" size="12">
					欢迎使用——青宇钦彬电商系统<br/><hr/>
					</font>
					<font color="black" size="6">
					该系统只是测试版，实现效果用的，使用了一张表，多个界面都是调用一张表的，大家可以看一看，主要是用到的技术，也可以多改改，练练手。
					</font>
				</div>
				
			</div>
		</div>
	</div>
	<div region="west" style="width: 150px;" title="导航菜单" split="true">
		<ul id="tree"></ul>
	</div>
	<div region="south" style="height: 40px;" align="center"><font size="3">版权所有————<a href="http://wpa.qq.com/msgrd?v=3&uin=1617385338&site=qq&menu=yes" style="text-decoration:none;">青宇钦彬</a></font></div>
</body>
</html>