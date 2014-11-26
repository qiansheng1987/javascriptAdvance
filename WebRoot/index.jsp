<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	
		function Animal() {
			this.name = "Animal";
			this.showName = function() {
				alert(this.name);
			};
		}
		
		/*function Cat() {
			this.name = "cat";
		}*/
		function Cat(name) {
			Animal.call(this, name);
		}
		
		function init() {
			//WhoAmI();
			//BillGates.WhoAmI();
			//({name:"nobody", WhoAmI:WhoAmI}).WhoAmI();
			//add.call(sub,3,1);
			
			//var animal = new Animal();
			//var cat = new Cat("xiaomap3333");
			//cat.showName();
			//animal.showName.call(cat,""); //将animal.showName方法放到cat上下文中去执行。
			
			//var testThis = new TestThis();
			//alert(testThis.tab2 + "tab3");
			
			//employee.prototype.showName = function() {
			//	alert("qiansheng44444");
			//};
			//var e = new employee();
			//e.showName();
			
			//var calculator = new Calculator();
			//calculator.add(3, 5);
		}
		
		function WhoAmI() {
			alert("I'm " + this.name + " of " + typeof(this));
		}
		
		var BillGates = {name:"Bill Gates"};
		BillGates.WhoAmI = WhoAmI;
		
		function add(a, b) {
			alert(a + b);
		}
		
		function sub(a, b) {
			alert(a - b);
		}
		
		var tab3 = "wangwu";
		function TestThis() {
			this.tab1 = "zhangsan";
			this.tab2 = "lisi";
			tab3 = "dddd";
		}
		
		
		/*function employee() {
			this.name = "zhangshan";
			this.dept = "general";
			this.gender = "lv";
		};*/
		
		var employee = function() {
			this.name = "zhangshan3333";
			this.dept = "general";
			this.gender = "lv";
		};
		var content = document.getElementById("content");
		var Calculator = function() {
			return {
				add: function(x, y) {
					var val = x + y;
					content.innerHTML = val;
				}
			};
		};
		
		
		
		function testClick() {
			/*var Cat = (function(){
				return function(name) {
					this.name = name;
					this.bark = function() {
						alert(name);
					};
				};
			}());
			
			var tomcat = new Cat("Tom");
			tomcat.bark();*/
			
			var blogModule = (function(){
				var my = {};
				var privateName = "博客园";
				function privateAddTopic(data) {
					alert("添加了"+data);
				}
				my.Name = privateName;
				my.AddTopic = function(data) {
					privateAddTopic(data);
				};
				return my;
			}());	
			//blogModule.AddTopic("qiansheng");
			//alert(blogModule.Name);
			
			var blogModule1 = (function(my){
				my.AddPhoto = function() {
					alert("add photo");
				};
				return my;
			}(blogModule));
			
			blogModule1.AddTopic("qiansheng333");
			blogModule1.AddPhoto();
		}
		
	</script>
  </head>
  
  <body onload="init();">
   	<input id="content" type="text"/>
   	<input type="button" value="点击" onclick="testClick();"/>
  </body>
</html>



























