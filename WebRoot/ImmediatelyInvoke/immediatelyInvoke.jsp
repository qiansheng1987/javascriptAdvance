<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'immediatelyInvoke.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		function makeCounter() {
			var i = 0;
			return function() {
				console.log(++i);
			};
		}
		
		/********************************/
		//用闭包保存状态
		
		function outerFun() {
			a = 0;
			//alert(a);
		}
		
		
		
		
		/*测试*/
		function testClick() {
			
			//var counter = makeCounter();
			//counter();
			//counter();
			
		
			//var i = function () {return 10;}();
			//alert("i:" + i);
			outerFun();
			alert(a);
		}
	</script>

  </head>
  
  <body>
    This is my JSP page. <br>
    <input type="button" value="点击" onclick="testClick();"/>
  </body>
</html>
