<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'variableObject.jsp' starting page</title>
    
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
  		//注意变量与执行上下文有密切的关系
  		/*var a = 10;//全局上下问您中的变量
  		(function(){
  			var b = 20; //// function上下文中的局部变量
  		}());
  		//alert(a);
  		//alert(b);*/
  		
  		/*当前ECMAScript规范指出独立作用域只能通过“函数(function)”代码类型的执行上下文创建。
  		也就是说，相对于C/C++来说，ECMAScript里的for循环并不能创建一个局部的上下文。*/
  		//for ( var k in {a:1,b:2}) {
			//alert(k);
		//}
		
		//alert(k); // 尽管循环已经结束但变量k依然在当前作用域弹出最后一个结果及：b
		
		
// 		if (true) {
// 			var a = 1;
// 		} else {
// 			var b = 2;
// 		}
		//alert(a);//1
		//alert(b);//undefined
		//alert(d);//Uncaught ReferenceError: d is not defined 
		
		
// 		var foo = {
// 			bar: function() {
// 				return this;
// 			}
// 		};
		
		//alert(foo.bar);
		
// 		(function(){
// 			alert(this);
// 		}());
		
// 		function foo(callback){
// 			callback();
// 		}
		
// 		var b = function bar() {
// 			alert("foo.bar22");
// 		};
		
		//foo(b);
// 		var global = new Global();
// 		global.window.ab = 10;
// 		alert(ab);

		
		var x = 10;
		function foo() {
			var x = 20;
			var y = 30;
			var bar = new Function('alert(x);alert(y)');
			bar();
		}
		
		//foo();
		
		function a() {    alert(this);}a.call(window);
		
		
		
  	</script>
  </body>
</html>


























