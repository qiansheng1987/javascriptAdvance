<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'propotype.jsp' starting page</title>
    
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
    	/************原型使用方式1*************************************/
    	var Calculator = function(decimalDigits, tax) {
    		this.decimalDigits = decimalDigits;
    		this.tax = tax;
    	};
    	
    	/*Calculator.prototype = {
    		add: function(x, y) {
				return x + y;    		
    		},
    		substract: function() {
    			return x - y;
    		}
    	};
    	var cal = new Calculator(10, 30);
    	console.log(cal.add(1, 5));*/
    	
    	
    	/************原型使用方式2*************************************/
    	//在赋值原型prototype的时候使用function立即执行的表达式来赋值
    	//特点：可以封装私有的function，通过return的形式暴露出简单的使用名称，以达到public/private的效果
    	/*Calculator.prototype = function () {
    		add = function (x, y) {
    			return x + y;
    		};
    		substract = function (x, y) {
    			return x - y;
    		};
    		return {
    			add:add,
    			substract:substract
    		};
    	}();*/
    	//alert((new Calculator()).add(11, 3));
    	
    	
    	/************分步声明：*************************************/
    	var BaseCalculator = function() {
    		this.decimalDigits = 2;
    	};
    	
    	//使用原型给BaseCalculaator扩展2个对象
    	BaseCalculator.prototype.add = function(x, y) {
    		return x + y;
    	};
    	BaseCalculator.prototype.substract = function (x, y) {
    		return x - y;
    	};
    	
    	
    	/*************重写原型：*********************************/
    	BaseCalculator.prototype.add = function(x,y ) {
    		return x + y + this.decimalDigits;
    	};
    	//alert((new BaseCalculator()).add(1,4));
    	//注意：那就是重写的代码需要放在最后，这样才能覆盖前面的代码。
    	
    	
    	/*************原型链和属性查找*********************************/
    	/*prototype（原型）
		函数对象中自身声明的方法和属性与prototype声名的对象有什么不同：
		自身声明的方法和属性是静态的, 也就是说你在声明后,试图再去增加新的方法或者修改已有的方法,并不会由其创建的对象产生影响,也即继承失败
		而prototype可以动态地增加新的方法或者修改已有的方法, 从而是动态的,一旦父函数对象声明了相关的prototype属性,
		由其创建的对象会自动继承这些prototype的属性
		
		
		
		既然有函数对象本身的属性, 也有prototype的属性, 那么是由其创建的对象是如何搜索相应的属性的呢?
		基本是按照下面的流程和顺序来进行：
		1 先去搜索函数对象本身的属性,如果找到立即执行
		2 如果1没有找到,则会去搜索prototype属性,有2种结果,找到则直接执行,否则继续搜索父对象的父对象的prototype, 
		直至找到,或者到达prototype chain 的结尾(结尾会是Object对象)
		上面也回答如果函数对象本身的属性与prototype属性相同(重名)时的解决方式, 函数本身的对象优先 
		
		看一个多重prototype链的例子:
		// 多重prototype链的例子
			function Employee(name)
			{
				this.name = "";
				this.dept = "general";
				this.gender = "unknown";
			}
			function WorkerBee()
			{
				this.projects = [];
				this.hasCar = false;
			}
			WorkerBee.prototype = new Employee; // 第一层prototype链
			function Engineer()
			{
				this.dept = "engineer"; //覆盖了 "父对象"
				this.language = "javascript";
			}
			Engineer.prototype = new WorkerBee; // 第二层prototype链
			var jay = new Engineer("Jay");
			if (flag)
			{
				alert(jay.dept);    //engineer, 找到的是自己的属性
				alert(jay.hasCar);  // false, 搜索到的是自己上一层的属性
				alert(jay.gender);  // unknown, 搜索到的是自己上二层的属性
			}*/
			
			
		/*************hasOwnProperty函数：********************************/
		//hasOwnProperty是Object.prototype的一个方法，他能判断一个对象是否包含自定义属性而不是原型链上的属性，
		//因为hasOwnProperty 是 JavaScript 中唯一一个处理属性但是不查找原型链的函数。
		
		/*Object.prototype.bar = 1;
		var foo = {goo:undefined};
		alert(foo.hasOwnProperty("bar"));
		alert(foo.hasOwnProperty("goo"));*/
		
		//个恶心的地方是：JavaScript 不会保护 hasOwnProperty 被非法占用，
		//因此如果一个对象碰巧存在这个属性，就需要使用外部的 hasOwnProperty 函数来获取正确的结果。
		/*var foo = {
			hasOwnProperty: function() {
				return false;
			},
			bar:"Here be dragons"
		};*/
		
		//alert(foo.hasOwnProperty("bar"));
		//如果一个对象碰巧存在这个属性，就需要使用外部的 hasOwnProperty 函数来获取正确的结果
		// 使用{}对象的 hasOwnProperty，并将其上下为设置为foo
		//alert({}.hasOwnProperty.call(foo, 'bar')); // true
		
		Object.prototype.bar = 1;
		var foo = {moo:2};
		for ( var i in foo) {
			//console.log(i);
			if (foo.hasOwnProperty(i)) { //判断foo的所有属性是否来自自已固有的属性（不是来自原型继承的）
				console.log(i);
			}
		}
		
    </script>
  </body>
</html>





































