<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
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
  <div class="content">
    <section>
      <article class="login_form">
      	<div class="top_name">로그인</div>
        <form action="dblogin.jsp" method="post" name="form1" onsubmit="return form_login();">
          <input class="login_input" type="text" name="id" placeholder="아이디"><p>
          <input class="login_input" type="password" name="pw" placeholder="비밀번호"></p>
          <input class="submit_button" type="submit" title="로그인" alt="로그인" value="로그인">
        </form>
          <span class="login_find"><a href="id_pw_find.html" target="_blank">아이디 · 비밀번호 찾기</a></span>
          <span class="signup"><a href="signup.jsp" target="_blank">회원가입</a></span>
      </article>
    </section>
  </div>
    <script>
  	function form_login(){
  		var id = document.form1.id.value;
  		var pw = document.form1.pw.value;
  		
  		if(id == null || id == ""){
  			alert('아이디를 입력하세요.');
  			document.form1.id.focus();
  			return false;
  		}
  		
  		if(pw==null || pw==""){
  			alert('패스워드를 입력하세요.');
  			document.form1.pw.focus();
  			return false;
  		}
  		return true;
  	}
  	</script>
</body>
</html>


