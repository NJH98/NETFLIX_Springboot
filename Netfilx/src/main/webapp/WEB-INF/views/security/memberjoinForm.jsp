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
    <link rel="stylesheet" type="text/css" href="css/memberjoin.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <title>Netflix</title>
</head>
<body>
    <script type="application/js" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <div class="navbar">
        <div class="logo"><a href=""><img src="https://fontmeme.com/permalink/210925/ad178911c18eded696ff02234a6c53b8.png" alt="netflix-type" border="0"></a></div>
        <div class="loginbanner"><a href="/loginForm" id="banner">로그인</a></div>
    </div>
    <hr>
    <div class="member">
        <form action="/memberSaveDB" method="post">
            <div class="membertitle">비밀번호를 설정해 맴버십을 시작하세요.</div>
            <div class="membertitle2">몇 단계만 더 거치면 넷플릭스 가입완료! <br>
            복잡한 단계는 모두 없앴습니다.</div>
            <input id="email" type="text" name="email" placeholder="이메일 주소">  
            <button class="emailCheck" type="button" id="emailCheck" onclick="fn_emailCheck();" value="N"> 중복확인 </button>
            <input id="input1" type="password" name="password" placeholder="비밀번호">  <br/>
            <input id="input1" type="text" name="username" placeholder="본인성명">  <br/>
            <input id="input1" type="text" name="phone" placeholder="휴대폰 번호 - 없이 입력하세요">  <br/>
            <input id="input1" type="text" name="age" placeholder="나이">       <br/>
            성별 : &nbsp;
            <input id="input3" type="radio" name="sx" value="남자" checked>남자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="input3" type="radio" name="sx" value="여자">여자        <br/>

            <div class="enter1">
                <div><input id="cb1" type = "checkbox"><label for="cb1">V</label>예 저는 <a href="">개인정보 처리방침</a>에 따른 개인정보 수집 및 활용에 동의합니다.</div>
                <div><input id="cb2" type = "checkbox"><label for="cb2">V</label>예, 넷플릭스 특별 할인 알람 이메일을 보내주세요 (선택사항)</div>
            </div>

            <div><input id="btn" type="submit" value="동의하고계속"></div>
        </form>
    </div>
    
    <div class="downcolor">
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
</div>
<script type="text/javascript" language="javascript">
    function fn_emailCheck() {
        $.ajax({
            url : "/security/emailCheck",
            type : "POST",
            dataType :"JSON",
            data : {"email" : $("#email").val()},
            success : function (data) {
                if(data == 1) {
                    alert("중복된 이메일입니다.");
                } else if (data == 0) {
                    $("#emailCheck").attr("value", "Y");
                    alert("사용 가능한 이메일입니다.")
                }
            }

        });
    }
    </script>
</body>
</html>



