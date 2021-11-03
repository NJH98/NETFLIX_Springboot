<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1> loginForm.jsp </h1>
  
  <form action="aaa" method="post">
     <c:if test="${param.error != null}" >
       <p>
          Login Error !!! <br />
          ${error_message}
       </p>   
     </c:if>
     Email : <input type="text" name="j_useremail"> <br />
     PW : <input type="text" name="j_password"> <br />
     <input type="submit" value="로긴" > <br />
  </form>
  
</body>
</html>



