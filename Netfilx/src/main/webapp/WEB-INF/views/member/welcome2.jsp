<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>    
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<title>Welcome</title>
</head>
<body>
welcome : Member

<sec:authorize access="isAuthenticated()">
  <p> 로그인 되었음...</p>
  <sec:authentication property="name" />님 환영합니다.
</sec:authorize>


<a href="/logout">로그 아웃</a>


<!--  
<c:if test="${not empty pageContext.request.userPrincipal}" >
    <p> 로그인 되었음...</p>
</c:if>

<c:if test="${empty pageContext.request.userPrincipal}" >
    <p> 로그인 안되었음...</p>
</c:if>
-->





</body>
</html>