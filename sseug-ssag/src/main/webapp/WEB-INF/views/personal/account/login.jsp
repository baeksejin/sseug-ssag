<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#login { display:none; } 
</style>
</head>
<body>
	<jsp:include page="../../common/menuBar.jsp" />  
	
	<div class="login-area" align="right"> 
		<c:choose> 
			<c:when test="${ empty loginPUser }">
				<form action="login" method="post">
					<table align="center" style="padding: 30px;">
						<tr>
							<td>���̵�</td>
							<td><input name="p_id" required></td>
							<td rowspan="2" style="height: 50px;"><input type="submit" value="�α���"></td>
						</tr>
						<tr>
							<td>��й�ȣ</td>
							<td><input type="password" name="p_pw" required></td>
						</tr>
						<tr>
							<td colspan="3" align="center" style="padding: 30px;">
								<a href="/sseug-ssag/personal/account/register">ȸ������ |</a>
								<a href="">���̵�/��й�ȣ ã��</a>
							</td> 
						</tr>
					</table>
				</form>
			</c:when> 
			<c:otherwise>
			 <div>
				<table align="center">
					<tr>
						<td colspan="2">
							<h3>${ loginPUser.p_name }�� ȯ���մϴ�</h3>
						</td>
					</tr>
					<tr>
						<td><a href="/sseug-ssag/personal/myPage/profile">����������</a>&emsp;|</td>
						<td><a href="logout"> �α׾ƿ�</a></td>
					</tr>
				</table> 
			</div> 
			</c:otherwise>
		</c:choose>
	</div>

	<br>

</body>
</html>