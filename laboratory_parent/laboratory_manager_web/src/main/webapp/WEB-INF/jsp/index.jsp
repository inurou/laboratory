<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数媒实验室后台管理系统</title>
<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="css/taotao.css" />
<script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
</style>
</head>
<body class="easyui-layout">
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
         	<li>
         		<span>设备管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'item-add'}">新增设备</li>
	         		<li data-options="attributes:{'url':'item-list'}">查询设备</li>
	         	</ul>
         	</li>
         	<li>
         		<span>项目研究管理</span>
         		<ul>
					<li data-options="attributes:{'url':'search-add'}">新增项目</li>
					<li data-options="attributes:{'url':'search-list'}">查询项目</li>
	         	</ul>
         	</li>
			<li>
				<span>数媒学员管理</span>
				<ul>
					<li data-options="attributes:{'url':'member-add'}">新增成员</li>
					<li data-options="attributes:{'url':'member-list'}">查询成员</li>
				</ul>
			</li>
			<li>
				<span>数媒实验室新成员申请</span>
				<ul>
					<li data-options="attributes:{'url':'newmember-list'}">查看新成员申请</li>
				</ul>
			</li>
			<li>
				<span>器材租借管理</span>
				<ul>
					<li data-options="attributes:{'url':'equipment-list'}">查看租借申请</li>
				</ul>
			</li>
         </ul>
    </div>
    <div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs">
		    <div title="首页" style="padding:20px;">
		        	
		    </div>
		</div>
    </div>
    
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
</script>
</body>
</html>