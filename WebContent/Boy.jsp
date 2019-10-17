<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>男装</title>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var url;
	
	function searchBoy(){
		$('#dg').datagrid('load',{
			boyName:$('#s_boyName').val()
		});
	}
	
	function deleteBoy(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length==0){
			$.messager.alert("系统提示","请选择要删除的数据！");
			return;
		}
		var strIds=[];
		for(var i=0;i<selectedRows.length;i++){
			strIds.push(selectedRows[i].id);
		}
		var ids=strIds.join(",");
		$.messager.confirm("系统提示","您确认要删掉这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
			if(r){
				$.post("boyDelete",{delIds:ids},function(result){
					if(result.success){
						$.messager.alert("系统提示","您已成功删除<font color=red>"+result.delNums+"</font>条数据！");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示','<font color=red>'+selectedRows[result.errorIndex].gradeName+'</font>'+result.errorMsg);
					}
				},"json");
			}
		});
	}
	
	
	function openBoyAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加商品信息");
		url="boySave";
	}
	
	function openBoyModifyDialog(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert("系统提示","请选择一条要编辑的数据！");
			return;
		}
		var row=selectedRows[0];
		$("#dlg").dialog("open").dialog("setTitle","编辑商品信息");
		$("#fm").form("load",row);
		url="boySave?id="+row.id;
	}
	
	function closeBoyDialog(){
		$("#dlg").dialog("close");
		resetValue();
	}
	
	function resetValue(){
		$("#boyname").val("");
		$("#boydesc").val("");
		$("#boypirce").val("");
	}
	
	function saveBoy(){
		$("#fm").form("submit",{
			url:url,
			onSubmit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				if(result.errorMsg){
					$.messager.alert("系统提示",result.errorMsg);
					return;
				}else{
					$.messager.alert("系统提示","保存成功");
					resetValue();
					$("#dlg").dialog("close");
					$("#dg").datagrid("reload");
				}
			}
		});
}


</script>
</head>
<body style="margin: 5px;">
<table id="dg" title="商品信息" class="easyui-datagrid" fitColumns="true"
 pagination="true" rownumbers="true" url="boy" fit="true" toolbar="#tb">
	<thead>
		<tr>
			<th field="cb" checkbox="true"></th>
			<th field="id" width="50">编号</th>
			<th field="boyname" width="50">商品名称</th>
			<th field="boydesc" width="50">商品描述</th>
			<th field="boypirce" width="50">商品价格</th>
		</tr>
	</thead>
</table>

<div id="tb">
	<div>
		<a href="javascript:openBoyAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
		<a href="javascript:openBoyModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
		<a href="javascript:deleteBoy()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
	</div>
	<div>&nbsp;商品名称：&nbsp;<input type="text" name="s_boyName" id="s_boyName"/><a href="javascript:searchBoy()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a></div>
</div>

<div id="dlg" class="easyui-dialog" style="width: 300px;height: 280px;padding: 10px 20px"
	closed="true" buttons="#dlg-buttons">
	<form id="fm" method="post">
		<table>
			<tr>
				<td>商品名称：</td>
				<td><input type="text" name="boyname" id="boyname" class="easyui-validatebox" required="true"/></td>
			</tr>
			<tr>
				<td valign="top">商品描述：</td>
				<td><textarea rows="5" cols="14" name="boydesc" id="boydesc"></textarea></td>
			</tr>
			<tr>
				<td>商品价格：</td>
				<td><input type="text" name="boypirce" id="boypirce" class="easyui-validatebox"/></td>
			</tr>
		</table>
	</form>
</div>

<div id="dlg-buttons">
	<a href="javascript:saveBoy()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	<a href="javascript:closeBoyDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>
</body>
</html>