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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <div class="story1">
    <div class="bg"></div>
    <div class="navbar">
        <div class="logo"><img src="https://fontmeme.com/permalink/210925/ad178911c18eded696ff02234a6c53b8.png" alt="netflix-type" border="0"></div>
        <div class="menu">
            <div class="language"><i class="fas fa-globe"></i> 한국어 <i class="fas fa-caret-down fa-lg"></i></div>
            <div class="login" type="button" onclick="location.href='member/welcome2'">로그인</div>
            <div class="login" type="button" onclick="location.href='memberjoinForm'">회원가입</div>
        </div>
    </div>
    <div class="member">
        <div class="member1">영화, TV프로그램을<br>무제한으로.</div>
        <div class="member2">다양한 디바이스에서 시청하세요. 언제든 해지하실수 있습니다.</div>
        <br>
        <div class="member3">시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일 주소를 입력하세요.</div>
        <br>
        <div class="member4"> <form>
            <input id="input1" type="text" placeholder="이메일 주소">
            <input id="input2" type="button" onclick="location.href='/member/welcome2'" value="시작하기">
        </form>
        </div>
    </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class="membertext">
            <div class="sidemember1">TV로 즐기세요</div><br>
            <div class="sidemember2">스마트 TV, PlayStation, Xbox, Chromecast, Apple TV, 블루레이 플레이어 등 다양한 디바이스에서 시청하세요.</div>
            </div>
            <div class=""><img src="img/story2.gif" style="width: 550px; height: auto;"></div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class=""><img src="img/story3.gif" style="width: 350px; height: auto;"></div>
            <div class="membertext">
            <div class="sidemember1">즐겨 보는 콘텐츠를 저장해 오프라인으로 시청하세요.</div><br>
            <div class="sidemember2">간편하게 저장하고 빈틈없이 즐겨보세요.</div>
            </div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class="membertext">
            <div class="sidemember1">다양한 디바이스에서 시청하세요.</div><br>
            <div class="sidemember2">각종 영화와 TV 프로그램을 스마트폰, 태블릿, 노트북, TV에서 무제한으로 스트리밍하세요. 추가 요금이 전혀 없습니다.</div>
            </div>
            <div class=""><img src="img/story4.gif" style="width: 500px; height: auto;"></div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class=""><img src="img/story5.png" style="width: 500px; height: auto;"></div>
            <div class="membertext">
            <div class="sidemember1">어린이 전용 프로필을 만들어 보세요.</div><br>
            <div class="sidemember2">자기만의 공간에서 좋아하는 캐릭터와 즐기는 신나는 모험. 자녀에게 이 특별한 경험을 선물하세요. 넷플릭스 회원이라면 무료입니다.</div>
            </div>
        </div>
    </div>
</body>
</html>