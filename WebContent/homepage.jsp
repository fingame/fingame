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
  <title>�ɰ���</title>
</head>
<body>
	<div class="main_index">
  	<header>
  	  <div id="wrap_header">
   	   <span class="logo"><a href="#">�ΰ�</a></span>
   	   <div class="search">�˻�</div>
   	   <div class="user">
   	   <%=id %>
      </div >
      <div class="category">
        <ul>
          <li><a href="#">��α�</a></li>
          <li><a href="#">���� Q&A</a></li>
          <li><a href="#">��������</a></li>
          <li><a href="#">ȸ�� ���� ����</a></li>
          <li><a href="#">Ŀ�´�Ƽ</a></li>
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