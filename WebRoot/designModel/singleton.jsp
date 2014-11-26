<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'singleton.jsp' starting page</title>
    
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
  		//使用对象字面量的方法创建单例
  		//你可以添加自己的私有成员和方法，然后使用闭包在其内部封装这些变量和函数声明。只暴露你想暴露的public成员和方法
  		
  		var mySingleton = function() {
  			//这里声明私有变量和方法
  			var privateVariable = "something private";
  			function showPrivate() {
  				console.log(privateVariable);
  			}
  			
  			 /* 公有变量和方法（可以访问私有变量和方法） */   
  			 return {
  			 	publicMethod: showPrivate,
  			 	publicVar: "publicVar"
  			 };
  		};
  		
  		var singleton = new mySingleton();
  		//singleton.publicMethod();
  		//console.log(singleton.publicVar);
  		
  		
  		//如果我们想做到只有在使用的时候才初始化
  		var Singleton = (function(){
  			var instantiated;
  			function init() {
  				//这里定义单例代码
  				return {
  					publicMethod: function() {
  						console.log("hello world!");	
  					},
  					publicProperty:"test"
  				};
  			}
  			
  			return {
  				getInstance: function() {
  					if (!instantiated) {
						instantiated = init();  					
  					}
  					return instantiated;
  				}
  			};
  		}());
  		
  		
  		//Singleton.getInstance().publicMethod();
  		//console.log(Singleton.getInstance().publicProperty);
  		
  		//其他的实现方式
  		function Universe() {
  			//缓存实例
  			var instance = this;
  			//其他内容
  			this.start_time = 0;
  			this.bang = "Big";
  			//重写构造函数
  			Universe = function() {
  				return instance;
  			};
  		}
  		
  		//测试
  		var uni1 = new Universe();
  		var uni2 = new Universe();
  		console.log(uni1 === uni2);
  		uni2.bang = "qiansheng";
  		console.log(uni2.bang);
  	</script>
  </body>
</html>





























