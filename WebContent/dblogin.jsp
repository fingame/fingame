<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.service.DB" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

DB db = DB.getInstance();
int check = db.userCheck(id, pw);

if(check == 1){ //����
	session.setAttribute("id", id); // id �Ӽ��� ���� �Ҵ�.
	response.sendRedirect("homepage.jsp");
}else if(check == 0){ //����
	%><script>
	alert('�ƾƵ𡤺�й�ȣ�� ���� �ʽ��ϴ�.');
	history.go(-1);
	</script><%
}
%>