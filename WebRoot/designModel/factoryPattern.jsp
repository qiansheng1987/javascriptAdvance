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

<title>My JSP 'builderPattern.jsp' starting page</title>

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
			什么时候使用工厂模式
			以下几种情景下工厂模式特别有用：
			对象的构建十分复杂 
			需要依赖具体环境创建不同实例 
			处理大量具有相同属性的小对象 
			什么时候不该用工厂模式
			不滥用运用工厂模式，有时候仅仅只是给代码增加了不必要的复杂度，同时使得测试难以运行下去。
		 */

		var Car = (function() {
			var Car = function(model, year, miles) {
				this.model = model;
				this.year = year;
				this.miles = miles;
			};
			return function(model, year, miles) {
				return new Car(model, year, miles);
			};
		})();

		var tom = new Car("Tom", 2009, 50000);
		var dudu = new Car("Dudu", 2010, 5000);

		//console.log(tom.miles);
		//console.log(dudu.miles);

		var productManager = {};
		productManager.createProductA = function() {
			console.log("ProductA");
		};

		productManager.createProductB = function() {
			console.log("ProductB");
		};

		productManager.factory = function(type) {
			return new productManager[type];
		};

		productManager.factory('createProductA');
	</script>
</body>
</html>





















