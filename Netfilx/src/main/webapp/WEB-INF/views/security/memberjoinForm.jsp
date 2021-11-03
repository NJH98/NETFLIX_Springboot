<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

  <h1> 회원 가입 </h1>
  
  <form action="/memberSaveDB" method="post">
     Email : <input type="text" name="email"> <br />
     Pw : <input type="text" name="password"> <br />
     Name : <input type="text" name="username"> <br />
     Phone : <input type="text" name="phone"> <br />
     Age : <input type="text" name="age"> <br />
     Sx : <input type="checkbox" name="sx"> <br />
     <input type="submit" value="가입" > <br />
  </form>

</body>
</html>



