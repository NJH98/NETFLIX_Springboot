<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head >
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <title>Netfilx</title>
</head>
<body>
    <div class="story1">
    <div class="bg"></div>
    <div class="navbar">
        <div class="logo"><img src="https://fontmeme.com/permalink/210925/ad178911c18eded696ff02234a6c53b8.png" alt="netflix-type" border="0"></div>
    </div>
    
    <div class="member">
        <form action="aaa" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="membertitle">로그인</div>
            <c:if test="${param.error != null}" ></c:if>
            <div><input id="input1" type="text" placeholder="이메일 주소 또는 전화번호" name="j_useremail" value="${param.emailid}"></div>
            <div><input id="input2" type="password" placeholder="비밀번호" name="j_password"></div>
            <div><input id="input3" type="submit" value="로그인"></div>
        </form>
        <div class="enter1">
            <div><input id="cb1" type = "checkbox"><label for="cb1">V</label>로그인 정보 저장</div>
            <a href="" id="cb2" >도움이 필요하신가요?</a>
        </div>

        <div class="enter2">
            <a href="memberjoinForm" id="enter2link"><i class="fab fa-facebook-f fa-lg" id="facebook" style="color: white; padding:2%; background-color: blue;"></i> Facebook으로 로그인</a>
        </div>

        <div class="enter3">
            <div id="inenter3">Netflix 회원이 아닌가요?</div> <a href="memberjoinForm" id="enter3link">지금 가입하세요.</a>
        </div>

        <div class="enter4">
            이 페이지는 Google reCAPTCHA의 보호를 받아<br>
            사용자가 로봇이 아님을 확인합니다. <a href="">자세히 알아보기</a>
        </div>
    </div>
    
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