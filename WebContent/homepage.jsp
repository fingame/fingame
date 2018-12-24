<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String id="";
try{
	id=(String)session.getAttribute("id");
	if(id ==  null || id.equals("")){
		response.sendRedirect("login.jsp");
	}else{
%>
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
   	   <%=id %>
      </div >
      <div class="category">
        <ul>
          <li><a href="#">블로그</a></li>
          <li><a href="#">금융 Q&A</a></li>
          <li><a href="#">제정상태</a></li>
          <li><a href="#">회원 게임 리뷰</a></li>
          <li><a href="#">커뮤니티</a></li>
        </ul>
      </div>
    </div>
  </header>
  </div>
</body>
</html>
<%}
	}catch(Exception e){
	e.printStackTrace();
}%>