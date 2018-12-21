<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>핀게임</title>
</head>
<body>
	<div class="main_index">
  	<header>
  	  <div id="wrap_header">
   	   <span class="logo"><a href="#">로고</a></span>
   	   <div class="search">검색</div>
   	   <div class="user">
     	   <ul>
   	       <li><a href="login.jsp" class="login_align">로그인</a></li>
      	   <li><a href="signup.jsp" class="signup_align">회원가입</a></li>
     	   </ul>
      </div >
      <div class="category">
        <ul>
          <li><a href="#">블로그</a></li>
          <li><a href="#">금융 Q&A</a></li>
          <li><a href="#">회원 게임 리뷰</a></li>
          <li><a href="#">커뮤니티</a></li>
        </ul>
      </div>
    </div>
  </header>
  <div class="top_name">회원가입</div>
    <section>
    <form action="dbsignup.jsp" method="post" id="signupform" name="form1" onSubmit="return form_submit();">
      <article class="signup_content">
        <h3>아이디</h3>
        <input class="signup_input" type="text" name="id" maxlength="20">
        <input type="button" value="중복확인" name="confirm_id">
        <span id="chkMsg"></span>
        <h3>비밀번호</h3>
        <input class="signup_input" type="password" name="pw" maxlength="20">
        <h3>비밀번호 재확인</h3>
        <input class="signup_input" type="password" name="repw" maxlength="20">
        <h3>이메일</h3>
        <input class="signup_input" type="email" name="email">
      </article>
      <article class="user_content">
        <h3>이름</h3>
        <input class="signup_input" type="text" name="name" maxlength="5">
        <h3>닉네임</h3>
        <input class="signup_input" type="text" name="nicname" maxlength="10">
      </article>
      <input class="submit_button" type="submit" value="가입하기">
    </form>
  </section>
  </div>
</body>
</html>