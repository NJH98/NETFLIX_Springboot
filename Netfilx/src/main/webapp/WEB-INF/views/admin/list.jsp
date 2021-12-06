<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
        <title>어드민</title>
    </head>
    
    <body>
    <h1>회원 목록 페이지</h1>
    <hr>
            <table>
                <tr>
                    <th>email</th>
                    <th>username</th>
                    <th>phone</th>
                    <th>age</th>
                    <th>sx</th>
                    <th>authority</th>
                    <th>정지 회원 처리</th>
                </tr>
                    <c:forEach items="${list}" var="dto">
                <tr>
	            	<td>${dto.email}</td>
	            	<td>${dto.username}</td>
		            <td>${dto.phone}</td> 
		            <td>${dto.age}</td>
		            <td>${dto.sx}</td>
		            <td>${dto.authority}</td>
                    <td><a href="delete?email=${dto.email}">삭제</a></td>
	            </tr>
                    </c:forEach>
            </table>
    </body>
    </html>
