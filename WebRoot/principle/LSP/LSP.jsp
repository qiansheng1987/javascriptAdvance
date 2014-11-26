<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LSP.jsp' starting page</title>
    
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
  		//里时替换原则 派生类型必须可以替换它的基类型。
  		//在面向对象编程里，继承提供了一个机制让子类和共享基类的代码，这是通过在基类型里封装通用的数据和行为来实现的.
  		
  		
  		//尽量使用对象组合而不是类继承 
  		//当使用继承的时候，继承子类型和他们的基类型耦合在一起了，就是说基类型的改变会影响到继承子类型。
  		
  		function Vehicle(my) {
  			var my = my || {};
  			my.speed = 0;
  			my.running = false;
  			this.speed = function() {
  				return my.speed;
  			};
  			
  			this.start = function() {
  				my.running = true;
  			};
  			
  			this.stop = function() {        
  				my.running = false;    
  			};
  			
  			this.accelerate = function() {
	        	my.speed++;    
	        };  
	          
  			this.decelerate = function() {
	        	my.speed--;    
	        };
	        
	        this.state = function() {
	        	if (!my.running) {
	        		return "parked";
	        	} else if (my.running && my.speed) {
	        		return "moving";
	        	} else if (my.running) {
	        		return "idle";
	        	}
	        };
  		}
  		
  		var vec = new Vehicle();
  		vec.start();
  		alert(vec.state());
  		
  		
  		
  		
  		
  	</script>
  </body>
</html>


























































