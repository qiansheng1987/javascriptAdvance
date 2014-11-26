<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'OCP.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>	
  	<script type="text/javascript">
  		//软件实体（类，模块，方法等等）应当对扩展开放，对修改关闭，即软件实体应当在不修改的前提下扩展。
  		/*********************没有使用开闭原则之前******************************/
  		//问题类型
  		var AnswerType = {
  			Choice: 0,
  			Input: 1
  		};
  		
  		//问题实体
  		function question(label, answerType, choices) {
  			return {
  				label: label,
  				answerType:answerType,
  				choices: choices
  			};
  		}
  		
  		var view = (function(){
  			//render一个问题
  			function renderQuestion(target, question) {
  			}
  		}());
  	</script>
  </body>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
</html>
