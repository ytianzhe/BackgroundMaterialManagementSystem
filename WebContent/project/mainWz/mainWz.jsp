<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>物资类型录入</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="<%=basePath%>layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="<%=basePath%>css/public.css" media="all" />
</head>
<body class="childrenBody">
<form class="layui-form">
		<fieldset class="layui-elem-field">
    	<legend>功能区</legend>
    	<div class="layui-field-box">
     			<a class="layui-btn layui-btn-normal  AddMainWzBtn" id="AddMainWzBtn">增加</a>
				<a class="layui-btn layui-btn-normal  DelMainWzBtn" id="DelMainWzBtn">删除</a>
				<a class="layui-btn layui-btn-normal  BatchUploadMainWzBtn" id="BatchUploadMainWzBtn">批量上传</a>
				<a class="layui-btn layui-btn-normal  DeleteMoreBtn" id="DeleteMoreBtn">批量删除</a>
				<a class="layui-btn layui-btn-normal layui-btn-normal refresh">刷新</a>
    	</div>
	</fieldset>
		<blockquote class="layui-elem-quote quoteBox">
			 <div class="layui-inline">
				  <div class="layui-inline">
				 	<div class="layui-input-inline">
       				 	<select name="nameSelect" id="nameSelect"  class="layui-input nameSelect" lay-search="" >
        				  <option value="-1">直接选择物资名称</option>
       				 	</select>
    				 </div>
				 
    				 <div class="layui-input-inline">
       				 	<select name="groupNameId" id="groupNameId"  class="layui-input groupNameId" lay-search="" >
        				  <option value="-1">直接选择组别</option>
       				 	</select>
    				 </div>
    				 <div class="layui-input-inline">
       				 	<select name="position" id="position"  class="layui-input positionSelect" lay-search="" >
        				  <option value="-1">直接选择位置</option>
       				 	</select>
    				 </div>
    				 <div class="layui-input-inline">
       				 	<select name="userSelect" id="userSelect"  class="layui-input userSelect" lay-search="" >
        				  <option value="-1">直接选择使用者</option>
       				 	</select>
    				 </div>
				  		<div class="layui-input-inline">
						<a class="layui-btn search_btn" data-type="reload">搜索</a> <a
							class="layui-btn  reset_btn" data-type="">重置</a>
						</div>
      				
    			</div>
    </div>
	</blockquote>
	<table id="mainWzList" lay-filter="mainWzList"></table>
	<div id="test1"></div>
	<!--操作-->
	<script type="text/html" id="newsListBar">
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
	</script>
</form>
<script type="text/javascript" src="<%=basePath%>layui/layui.js"></script>
<script type="text/javascript" src="mainWzList.js"></script>
</body>
</html>