<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>游戏</title>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<body style="margin: 5px;">
	<table id="dg" title="游戏" class="easyui-datagrid" fitColumns="true"
	 pagination="true" rownumbers="true" url="boy" toolbar="#tb">
		<thead>
			<tr>
				<th field="cb" checkbox="true"></th>
				<th field="id" width="50">编号</th>
				<th field="boyname" width="50">商品名</th>
				<th field="boydesc" width="50">商品描述</th>
				<th field="boypirce" width="50">商品价格</th>
			</tr>
		</thead>
	</table>
	
	<div id="tb">
		<div>
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
		</div>
		<div>&nbsp;按名字搜索：&nbsp;<input type="text" name="s_boyName" id="s_boyName"/><a href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a></div>
	</div>
</body>
</html>