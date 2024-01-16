<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<%@ page import="com.s4.personal.dto.AccountPDto" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 --%>
<% 
	AccountPDto loginUser = (AccountPDto)request.getAttribute("login"); /* 모델에서가져옴 */
	/* AccountPDto loginUser = (AccountPDto)session.getAttribute("login"); */
%>

    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>로그인 완료</title>
</head>
<body>
    <h2>로그인 완료</h2> 
    
    <% if (loginUser != null) { %> 
        <p>ID: <%= loginUser.getP_id()%> 님 환영합니다.</p>  
    <% } else { %>
        <p>로그인 정보를 가져올 수 없습니다.</p>
    <% } %>
    
    <div class="ml-auto">
        <a href="/sseug-ssag/mypage/profile" style="color: inherit;">
            <span class="mb-0 text font-weight-bold">마이페이지</span>
        </a> 
    </div>
    
  <%--   <c:if test="${ not empty loginUser }">
    	<p>ID: ${ loginUser.getP_id() } 님 환영합니다.</p>  
    </c:if>
    <c:if test="${ empty loginUser }">
    	 <p>로그인 정보를 가져올 수 없습니다.</p>
    </c:if> --%>
</body>
</html>