<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>register</title>
</head>
<body>
	<jsp:include page="../../common/menuBar.jsp" /> 
	
	<h1 align="center">회원가입</h1>
	<form:form method="post" action="register" modelAttribute="accountP">
		<table align="center">
			<tr>
				<td>ID</td>
				<td><form:input  id="p_memberId" path="p_id" /></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><form:input id="p_memberPw" path="p_pw" type="password" /></td>
			</tr> 
			<tr>
				<td>NAME</td>
				<td><form:input id="p_memberName" path="p_name" /></td>
			</tr> 
			<tr>
				<td>NICKNAME</td>
				<td><form:input id="p_memberNickname" path="p_nickname" /></td>
			</tr> 
			<tr>
				<td>EMAIL</td>
				<td><form:input id="p_memberEmail" path="p_email" type="email" /></td>
			</tr>  
			<tr>
				<td>PHONE</td>
				<td><form:input id="p_memberPhone" path="p_phone" /></td>
			</tr>  
			<tr>
				<td colspan="2" align="center"><input type="submit" value="회원가입"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>