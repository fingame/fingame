<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.service.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
Data data = new Data();
data.setId(request.getParameter("id"));
data.setPw(request.getParameter("pw"));
data.setEmail(request.getParameter("email"));
data.setName(request.getParameter("name"));
data.setNicname(request.getParameter("nicname"));
data.setReg_date(new Timestamp(System.currentTimeMillis()));

DB db = DB.getInstance();
db.signup(data);
%>

<script>
	alert('ȸ�������� �Ϸ�Ǿ����ϴ�.');
	window.location.href="index.html";
</script>
