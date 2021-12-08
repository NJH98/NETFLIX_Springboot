<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <!-- <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet"> -->
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <link rel="stylesheet" type="text/css" href="resources/css/main.css">
        <title>Document</title>
        <script type="text/javascript" src="resources/js/main.js"></script>
    </head>
    <body>
        <div class="top">
        <div class="navbar" id="header">
            <div class="logo"><img src="https://fontmeme.com/permalink/211118/9674e36e3cec6a501176dfd4cb409a4e.png" alt="bebas-neue-font" border="0"></div>
                <div class="leftmenu">
                    <div class="inner"><a href="">홈</a></div>
                    <div class="inner"><a href="">TV 프로그램</a></div>
                    <div class="inner"><a href="">영화</a></div>
                    <div class="inner"><a href="">NEW! 요즘 대세 콘텐츠</a></div>
                    <div class="inner"><a href="">내가 찜한 콘텐츠</a></div>
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
    
        <div class="con">
            <div id="conlogo"></div>
            <div class="conbtn">
                <div class="conbtn1" button type="button" onclick="location.href=''">
                    <i class="fas fa-play"></i> 재생
                </div>
                <div class="conbtn2" button type="button" onclick="location.href=''">
                    <i class="fas fa-info-circle"></i> 상세 정보
                </div>
            </div>
        </div>
        <div class="extra">
            <div class="replaybtn" type="button" onclick="replaybtn();">
                <i class="fas fa-redo-alt fa-lg"></i>
            </div>
            <div class="rating">
                &nbsp;
            </div>
        </div>
    
        <div id="video"></div>
        
        <div class="mainbord" style="overflow: hidden;">
            &nbsp;&nbsp;&nbsp;&nbsp;콘텐츠 리스트 종목 목록
            <div class="slide">
                <script>
                    for(var i = 0; i <= 2; i++){
                        document.write("<div class='slidein'>");
                            for(var j = 0; j <= 3; j++){
                                document.write("<a href=''><img class='imgslide' src='https://occ-0-3098-993.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABY3GFzL8R5ockoibzhPi8DveBUM-yN6YsNNGsqntb67HR5-8n5wD9HUxowVKNlOXDkG3yqGt3lIlSDizLS-qB1kDfkYSDqFQEWDGwWQ8Ix_miUL-vOt2LDQJAunuyqy8eGRYLhkrtqORtJsQi4f_gk2qUpoAqoAp0W0JnI90lcnnpGO-Ro_mgoq10MHvr4H-Qxxs2d2lcOfQVzGGzptYaLGG.jpg?r=171'></a>");
                            }
                        document.write("</div>");
                    }
                </script>
            </div>
        </div>
    
        <button class="leftbtn"> ◀ </button>
        <button class="rightbtn"> ▶ </button>
    
        <script>
        var a = 0;
        document.querySelector('.rightbtn').addEventListener('click', function(){
            if (a<200){
            a = a+100;
            document.querySelector('.slide').style.transform = 'translate(-'+a+'vw)';
            }
        })
        document.querySelector('.leftbtn').addEventListener('click', function(){
            if (a>99){
            a = a-100;
            document.querySelector('.slide').style.transform = 'translate(-'+a+'vw)';
            }
        })
        </script>
        
        <div class="mainbord1" style="overflow: hidden;">
            &nbsp;&nbsp;&nbsp;&nbsp;콘텐츠 리스트 종목 목록
            <div class="slide1">
                <script>
                    for(var i = 0; i <= 2; i++){
                        document.write("<div class='slidein'>");
                            for(var j = 0; j <= 3; j++){
                                document.write("<a href=''><img class='imgslide' src='https://occ-0-3098-993.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABWVxo0fkTf8ZZoL22ToSmE0TIYwV0si_9P9xCNqtba8qmyqp7-YCapdqUJlsG2pT2p4fgzjR-yVOi999ecks4_7Q8tSCz_U1knT6HA_8n2xfKUh6yA2LtXcQSd_g.jpg?r=5ce'></a>");
                            }
                        document.write("</div>");
                    }
                </script>
            </div>
        </div>
        
        <button class="leftbtn1"> ◀ </button>
        <button class="rightbtn1"> ▶ </button>
    
        <script>
        var a1 = 0;
        document.querySelector('.rightbtn1').addEventListener('click', function(){
            if (a1<200){
            a1 = a1+100;
            document.querySelector('.slide1').style.transform = 'translate(-'+a1+'vw)';
            }
        })
        document.querySelector('.leftbtn1').addEventListener('click', function(){
            if (a1>99){
            a1 = a1-100;
            document.querySelector('.slide1').style.transform = 'translate(-'+a1+'vw)';
            }
        })
        </script>
    
        <div class="mainbord2" style="overflow: hidden;">
        &nbsp;&nbsp;&nbsp;&nbsp;콘텐츠 리스트 종목 목록
        <div class="slide2">
            <script>
                for(var i = 0; i <= 2; i++){
                    document.write("<div class='slidein'>");
                        for(var j = 0; j <= 3; j++){
                            document.write("<a href=''><img class='imgslide' src='https://occ-0-3098-993.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABUCtCMy8Y_gY74oQNwsTI9LZ3m8geheUcf5uDPpSSn1eCOYRSHx6iv5135Wi74dsfmBZLyoLu0TUR_KnbM0K67GD86bpieGNOp-oKpvULgFQkrjsmXGlHFLLoAKsSEwWlou3gkX2VQQ8H5G2BneDziTTHB4TTQ8TEa0mngHg_1FB55oXv86sbBwX4IYCVrxUzmfmkqiJJyN7Sp9BlZWuF8B5.jpg?r=eee'></a>");
                        }
                    document.write("</div>");
                }
            </script>
        </div>
        </div>
    
        <button class="leftbtn2"> ◀ </button>
        <button class="rightbtn2"> ▶ </button>
    
        <script>
        var a2 = 0;
        document.querySelector('.rightbtn2').addEventListener('click', function(){
            if (a2<200){
            a2 = a2+100;
            document.querySelector('.slide2').style.transform = 'translate(-'+a2+'vw)';
            }
        })
        document.querySelector('.leftbtn2').addEventListener('click', function(){
            if (a2>99){
            a2 = a2-100;
            document.querySelector('.slide2').style.transform = 'translate(-'+a2+'vw)';
            }
        })
        </script>
    
        <div class="mainbord3" style="overflow: hidden;">
            &nbsp;&nbsp;&nbsp;&nbsp;콘텐츠 리스트 종목 목록
            <div class="slide3">
                <script>
                    for(var i = 0; i <= 2; i++){
                        document.write("<div class='slidein'>");
                            for(var j = 0; j <= 3; j++){
                                document.write("<a href=''><img class='imgslide' src='https://occ-0-3098-993.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABZDEvhRIKkF4HLJqwIrUNNDmMQVeevjeLsFuOn8LZ2gc7pEmhtPs3xw_o22vi_6NKkZywAcXiH8KaiABsqGrB-TY4w8.webp?r=a92'></a>");
                            }
                        document.write("</div>");
                    }
                </script>
            </div>
        </div>
    
        <button class="leftbtn3"> ◀ </button>
        <button class="rightbtn3"> ▶ </button>
    
        <script>
        var a3 = 0;
        document.querySelector('.rightbtn3').addEventListener('click', function(){
            if (a3<200){
            a3 = a3+100;
            document.querySelector('.slide3').style.transform = 'translate(-'+a3+'vw)';
            }
        })
        document.querySelector('.leftbtn3').addEventListener('click', function(){
            if (a3>99){
            a3 = a3-100;
            document.querySelector('.slide3').style.transform = 'translate(-'+a3+'vw)';
            }
        })
        </script>
    
        <div class="mainbord4" style="overflow: hidden;">
            &nbsp;&nbsp;&nbsp;&nbsp;콘텐츠 리스트 종목 목록
            <div class="slide4">
                <script>
                    for(var i = 0; i <= 2; i++){
                        document.write("<div class='slidein'>");
                            for(var j = 0; j <= 3; j++){
                                document.write("<a href=''><img class='imgslide' src='https://occ-0-3098-993.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABS4YHLe-H-44Kt1_HqnWSGeW8cAhFk6aVGJkiwJ_NlfShBobFt0_PVw4fwjtjBK79eOywuaYCwq5U02UQOcpPmh4HtA.webp?r=3ad'></a>");
                            }
                        document.write("</div>");
                    }
                </script>
            </div>
        </div>
    
        <button class="leftbtn4"> ◀ </button>
        <button class="rightbtn4"> ▶ </button>
    
    <script>
    var a4 = 0;
    document.querySelector('.rightbtn4').addEventListener('click', function(){
        if (a4<200){
        a4 = a4+100;
        document.querySelector('.slide4').style.transform = 'translate(-'+a4+'vw)';
        }
    })
    document.querySelector('.leftbtn4').addEventListener('click', function(){
        if (a4>99){
        a4 = a4-100;
        document.querySelector('.slide4').style.transform = 'translate(-'+a4+'vw)';
        }
    })
    </script>
    
        <div class="bottom">
            <div>질문이 있으신가요? 문의 전화:  080-001-9587</div>
            <br>
            <div class="bottomtable">
                <table border="0" width="1000" height="100">
                    <tr>
                        <td>자주 묻는 질문</td> <td>고객 센터</td> <td>계정</td> <td>미디어 센터</td>
                    </tr>
                    <tr>
                        <td>투자 정보(IR)</td> <td>입사 정보</td> <td>넷플릭스 지원 디바이스</td> <td>이용 약관</td>
                    </tr>
                    <tr>
                        <td>개인 정보</td> <td>쿠키 설정</td> <td>회사 정보</td> <td>문의하기</td>
                    </tr>
                    <tr>
                        <td>속도 테스트</td> <td>법적 고지</td> <td>오직 넷플릭스에서</td>
                    </tr>
                </table>
            </div>
            <div class="bottomlanguage">
                <i class="fas fa-globe"></i> 한국어 <i class="fas fa-caret-down fa-lg"></i>
            </div>
        <div class="bottomlast">
            <div>넷플릭스 대한민국</div>
            <br>
            넷플릭스서비시스코리아 유한회사 통신판매업신고번호: 제2018-서울종로-0426호 전화번호: 080-001-9587<br>
            대표: 레지널드 숀 톰프슨<br>
            이메일 주소: korea@netflix.com<br>
            주소: 대한민국 서울특별시 종로구 우정국로 26, 센트로폴리스 A동 20층 우편번호 03161<br>
            사업자등록번호: 165-87-00119<br>
            클라우드 호스팅: Amazon Web Services Inc.<br>
            공정거래위원회 웹사이트
        </div>
        </div>
    </body>
    </html>