<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'decoratePattern.jsp' starting page</title>

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
		/*
			装饰者模式是为已有功能动态地添加更多功能的一种方式，把每个要装饰的功能放在单独的函数里，
			然后用该函数包装所要装饰的已有函数对象，因此，当需要执行特殊行为的时候，调用代码就可以根据需要有选择地、
			按顺序地使用装饰功能来包装对象。优点是把类（函数）的核心职责和装饰功能区分开了。
		 */

		//需要装饰的类
		//装饰者是一种实现继承的替代方案
		function Macbook() {
			this.cost = function() {
				return 1000;
			};
		}

		function Memory(macbook) {
			this.cost = function() {
				return macbook.cost() + 200;
			};
		}

		var myMacbook = new Memory(new Macbook());
		//console.log(myMacbook.cost());

		function ConcreteClass() {
			this.performTask = function() {
				this.preTask();
				console.log('doing something');
				this.postTask();
			};
		}

		function AbstractDecorator(decorated) {
			this.performTask = function() {
				decorated.performTask();
			};
		}

		function ConcreteDecoratorClass(decorated) {
			this.base = AbstractDecorator;
			this.base(decorated);
			decorated.preTask = function() {
				console.log('pre-calling333..');
			};
			decorated.postTask = function() {
				console.log('post-calling33..');
			};
		}
		var concrete = new ConcreteClass();
		var decorator1 = new ConcreteDecoratorClass(concrete);
		var decorator2 = new ConcreteDecoratorClass(decorator1);
		decorator2.performTask();




		/***************************************************/
		var tree = {};
		tree.decorate = function() {
			console.log("make sure the tree won't fall");
		};

		tree.getDecorator = function(deco) {
			tree[deco].prototype = this; //tree[deco]继承this（tree）的方法
			return new tree[deco];
		};
		
		tree.Angel = function() {
			this.decorate = function() {
				this.Angel.prototype.decorate();//先执行原型
				console.log("an angel on the top");
			};
		};
		
		tree = tree.getDecorator("Angel");
		tree.decorate();
		
	</script>
</body>
</html>































