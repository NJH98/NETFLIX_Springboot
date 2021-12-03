<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en" xmlns:th="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="UTF-8">
        <title>어드민</title>
        <link rel="stylesheet" type="text/css" href="/css/header.css">
    </head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <style>
        .table{
            border:1px solid;
            width: 1100px;
        }
        thead{
            border-bottom: 1px solid gray;
        }
        .member{
            border:1px solid;
        }
        .member:hover{
            transition: all 0.3s;
            background:#DED369;
        }
        #search{
            border:1px solid lightgray;
        }
        .container{
            display: flex;
            justify-content: center;
        }
        .memberCenter{
            text-align: center;
        }
    
    </style>
    <body>
    <div th:replace="/fixed/header :: header"></div>
    <h1>회원 목록 페이지</h1>
    <hr>
    
    <div class="container">
        <form action="/memberList/update" method="POST">
            <table class="table" id="table">
                <thead>
                <tr>
                    <th>email</th>
                    <th>username</th>
                    <th>phone</th>
                    <th>age</th>
                    <th>sx</th>
                    <th>authority</th>
                    <th>정지 회원 처리</th>
                </tr>
                </thead>

                <tbody class="tbody" id="tbody">
                <c:forEach items="${userinfo}" var="vo">
	            <tr>
	            	<td>${vo.email}</td>
	            	<td>${vo.username}</td>
		            <td>${vo.phone}</td> 
		            <td>${vo.age}</td>
		            <td>${vo.sx}</td>
		            <td>${vo.authority}</td>
	            </tr>
	            </c:forEach>
                </tbody>
            </table>
        </form>
    </div>
    </body>
    </html>