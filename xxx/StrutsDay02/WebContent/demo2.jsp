<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Struts2封装数据属性驱动方式一：使用set方法</h1>
	<form action="${pageContext.request.contextPath }/demo3.action" method="post">
		用户名：<input type="text" name="username"/><br/>
		密码：<input type="password" name="password"/><br/>
		性别：<input type="radio" name="gender" value="男"/>男
			<input type="radio" name="gender" value="女"/>女<br/>
		爱好：<input type="checkbox" name="hobby" value="唱歌">唱歌
			<input type="checkbox" name="hobby" value="抽烟">抽烟
			<input type="checkbox" name="hobby" value="编码">编码<br/>
		生日：<input type="text" name="birthday" ><br/>
		<input type="submit" value="提交"/>
	</form>
	
	
	<h1>Struts2封装数据属性驱动方式二：使用页面表达式方式</h1>
	<form action="${pageContext.request.contextPath }/demo4.action" method="post">
		用户名：<input type="text" name="customer.username"/><br/>
		密码：<input type="password" name="customer.password"/><br/>
		性别：<input type="radio" name="customer.gender" value="男"/>男
			<input type="radio" name="customer.gender" value="女"/>女<br/>
		爱好：<input type="checkbox" name="customer.hobby" value="唱歌">唱歌
			<input type="checkbox" name="customer.hobby" value="抽烟">抽烟
			<input type="checkbox" name="customer.hobby" value="编码">编码<br/>
			生日：<input type="text" name="birthday" ><br/>
		<input type="submit" value="提交"/>
	</form>
	
	<h1>Struts2封装数据模型驱动方式</h1>
	<form action="${pageContext.request.contextPath }/demo5.action" method="post">
		用户名：<input type="text" name="username"/><br/>
		密码：<input type="password" name="password"/><br/>
		性别：<input type="radio" name="gender" value="男"/>男
			<input type="radio" name="gender" value="女"/>女<br/>
		爱好：<input type="checkbox" name="hobby" value="唱歌">唱歌
			<input type="checkbox" name="hobby" value="抽烟">抽烟
			<input type="checkbox" name="hobby" value="编码">编码<br/>
			生日：<input type="text" name="birthday" ><br/>
		<input type="submit" value="提交"/>
	</form>
</body>
</html>