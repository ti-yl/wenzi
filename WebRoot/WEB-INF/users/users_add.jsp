<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加页面</title>

</head>
<body>
	<form action="../users/add.do">
	<center>
		<table border="1"  style="text-align:center">
			<thead>
				<tr>
					<th>name</th>
					<th>loginname</th>
					<th>password</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text"  name="name" /></td>
					<td><input type="text"  name="loginname" /></td>
					<td><input type="text"  name="password" /></td>
				</tr>
				<tr><td colspan="3"><input  type="submit" value="添加"/></td></tr>
			</tbody>

		</table>
		</center>
	</form>

</body>
</html>