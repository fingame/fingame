<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>�ɰ���</title>
</head>
<body>
	<div class="main_index">
  	<header>
  	  <div id="wrap_header">
   	   <span class="logo"><a href="#">�ΰ�</a></span>
   	   <div class="search">�˻�</div>
   	   <div class="user">
     	   <ul>
   	       <li><a href="login.jsp" class="login_align">�α���</a></li>
      	   <li><a href="signup.jsp" class="signup_align">ȸ������</a></li>
     	   </ul>
      </div >
      <div class="category">
        <ul>
          <li><a href="#">��α�</a></li>
          <li><a href="#">���� Q&A</a></li>
          <li><a href="#">ȸ�� ���� ����</a></li>
          <li><a href="#">Ŀ�´�Ƽ</a></li>
        </ul>
      </div>
    </div>
  </header>
  <div class="top_name">ȸ������</div>
    <section>
    <form action="dbsignup.jsp" method="post" id="signupform" name="form1" onSubmit="return form_submit();">
      <article class="signup_content">
        <h3>���̵�</h3>
        <input class="signup_input" type="text" name="id" maxlength="20">
        <input type="button" value="�ߺ�Ȯ��" name="confirm_id">
        <span id="chkMsg"></span>
        <h3>��й�ȣ</h3>
        <input class="signup_input" type="password" name="pw" maxlength="20">
        <h3>��й�ȣ ��Ȯ��</h3>
        <input class="signup_input" type="password" name="repw" maxlength="20">
        <h3>�̸���</h3>
        <input class="signup_input" type="email" name="email">
      </article>
      <article class="user_content">
        <h3>�̸�</h3>
        <input class="signup_input" type="text" name="name" maxlength="5">
        <h3>�г���</h3>
        <input class="signup_input" type="text" name="nicname" maxlength="10">
      </article>
      <input class="submit_button" type="submit" value="�����ϱ�">
    </form>
  </section>
  </div>
</body>
</html>