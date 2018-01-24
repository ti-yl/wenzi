<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<head>
<center>
	<form action="../users/update.do" method="get">

		<table border="1" style="text-align: center">
			<thead>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>loginname</th>
					<th>password</th>
				</tr>
			</thead>

			<tbody>

				<tr>
					<td><input  type="hidden" name="id" value="${u.id }" /></td>
					<td><input type="text" name="name" value="${u.name}" /></td>
					<td><input type="text" name="loginname" value="${u.loginname }" /></td>
					<td><input type="text" name="password" value="${u.password }" /></td>

				</tr>
				<td colspan="4"><input type="submit" value="保存" /></td>
				<tr>

				</tr>
				<tr>
				</tr>

			</tbody>


		</table>


	</form>
</center>
</head>
</body>
</html>