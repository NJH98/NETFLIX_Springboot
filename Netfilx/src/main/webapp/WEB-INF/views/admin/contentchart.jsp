<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
                integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
                crossorigin="anonymous" />
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
            <link rel="stylesheet" type="text/css" href="resources/css/master.css">
            <title>Document</title>
        </head>

        <body>
            <div class="top">
                <div class="navbar" id="header">
                    <div class="logo"><img
                            src="https://fontmeme.com/permalink/211209/d02c5a114c824a421ad2827d991390e1.png"
                            alt="bebas-neue-font" border="0"></div>
                    <div class="leftmenu">
                        <div class="inner"><a href="/master">HOME</a></div>
                        <div class="inner"><a href="/chart">사용자 비율</a></div>
                        <div class="inner"><a href="/contentchart"><strong><u>컨텐츠 비율</u></strong></a></div>
                        <div class="inner"><a href="/content">컨텐츠 관리</a></div>
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
            <div class="rhdqor"></div>
            <div class="container">
                <div class="card">
                    <div class="card-body">
                        <canvas id="myChart1"></canvas>
                    </div>
                    <div class="card-footer text-center text-dark">
                        <h4>장르별 콘텐츠 분포</h4>
                    </div>
                </div>
            </div>
            <script> data = {
                    datasets: [{ backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(224, 99, 255, 0.2)', 'rgba(99, 102, 255, 0.2)', 'rgba(99, 250, 255, 0.2)', 'rgba(99, 255, 125, 0.2)'],
                    data: ['${actionCount}', '${HorrorCount}', '${RomenceCount}', '${SfCount}', '${ComicCount}'] }],
                    labels: ['액션', '호러', '로맨스', 'SF', '코믹']
                };
                var ctx1 = document.getElementById("myChart1"); var myPieChart = new Chart(ctx1, { type: 'pie', data: data, options: {} });
            </script>

        </body>

        </html>