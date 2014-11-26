<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'constructor.jsp' starting page</title>
    
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
  		//构造函数与原型
  		//另外：我们推荐构造函数以大写字母开头，以便区分普通的函数。
  		function Car(model, year, miles) {
  			this.model = model;
  			this.year = year;
  			this.miles = miles;
  		}
  		
  		Car.prototype.output = function() {
  			return this.model + "走了" + this.miles + "公里";
  		};
  		
  		var tom = new Car("大叔", 2009, 40000);
  		var qiansheng = new Car("qs", 2014, 3000);
  		console.log(tom.output());
  		console.log(qiansheng.output());
  		
  		
  		//原始包装函数
  		var greet = "Hello there";
  		console.log(greet.split(" ")[0]);
  		greet.smile = true;
  		console.log(typeof greet.smile);
  		
  		
  		var greet2 = new String("Hello Tther");
  		console.log(greet2.split(" ")[1]);
  		greet2.smile = false;
  		console.log(greet2.smile);
  		//执行结果
  		/*
  			大叔走了40000公里 constructor.jsp:38
			qs走了3000公里 constructor.jsp:39
			Hello constructor.jsp:44
			undefined constructor.jsp:46
			Tther constructor.jsp:50
			false 
  		*/
  	</script>
  </body>
</html>
































