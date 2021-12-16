<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <link rel="stylesheet" type="text/css" href="resources/css/master.css">
        <title>Document</title>
    </head>
    <body>
        <div class="top">
        <div class="navbar" id="header">
            <div class="logo"><img src="https://fontmeme.com/permalink/211209/d02c5a114c824a421ad2827d991390e1.png" alt="bebas-neue-font" border="0"></div>
                <div class="leftmenu">
                    <div class="inner"><a href="/master">HOME</a></div>
                    <div class="inner"><a href="/chart">사용자 비율</a></div>
                    <div class="inner"><a href="/contentchart">컨텐츠 비율</a></div>
                    <div class="inner"><a href="/content"><strong><u>컨텐츠 관리</u></strong></a></div>
                    <div class="inner"><a href="/list">사용자 관리</a></div>
                </div>
                <div class="rightmenu">
                    <div class="rightinner"><i class="fas fa-search fa-la"></i></div>
                    <div class="rightinner"><i class="fas fa-bell fa-2x"></i></div>
                    <div class="rightinner"><i class="fas fa-smile fa-2x"></i></div>
                </div>
        </div>
            <div class="dropdown">
                <button class="dropbtn">
                    <i class="fas fa-caret-down fa-2x"></i>
                </button>
                    <div class="dropdown-content">
                        <a href=""><i class="fas fa-smile fa-2x"></i> 프로필 관리</a>
                        <hr>
                        <a href="">계정</a>
                        <a href="">고객 센터</a>
                        <a href="/logout">넷플릭스에서 로그아웃</a>
                    </div>
            </div>
        </div>

        <table class="mtable">
            <thead>
                <tr>
                    <th scope="cols">title</th>
                    <th scope="cols">imgurl</th>
                    <th scope="cols">videourl</th>
                    <th scope="cols">category</th>
                    <th scope="cols">컨텐츠 삭제</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${content}" var="dto">
                    <tr>
                        <th scope="row">${dto.title}</th>
                        <td>${dto.imgurl}</td>
                        <td>${dto.videourl}</td>
                        <td>${dto.category}</td> 
                        <td><a href="contentdelete?title=${dto.title}">삭제</a></td>
                    </tr>
                </c:forEach>
            </tbody>
          </table>
</body>
</html>
