<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div data-role="page">

		<div data-role="header">
			<a href="#" data-icon="grid" data-iconpos="notext"></a>
			<a href="#" data-icon="home" data-iconpos="notext"></a>
				<h1>������ �ڶ�ȸ</h1>
		</div>
<%
 String booth_no = request.getParameter("booth_num");
 Class.forName("com.mysql.jdbc.Driver"); // JDBC������ ���� Class�̸� ����

 String DB_URL = "jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf8";
 		// �⺻������ ��Ʈ 3306���� �ϰ� ����� db�� �̸��� �����ش�(jsp)

 String DB_USER = "root"; //  �����ͺ��̽��� �����ϴ� ���̵�
 String DB_PASSWORD= "0324"; // password

 try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // ������ ȹ��
	 Statement stmt = conn.createStatement(); // ���� Ȯ��
     String query = "SELECT c_name, b_number, c_site, c_phonenumber, c_hireinfo, c_hireperson, c_info FROM company where b_number = " + booth_no; 
     ResultSet rs = stmt.executeQuery(query); // ������ ����!
     
     while(rs.next()){ 
    	 String booth_num = rs.getString("b_number");
    	 String company_name = rs.getString("c_name");
    	 String company_site = rs.getString("c_site");
    	 int company_phonenumber = rs.getInt("c_phonenumber");
    	 String company_hireinfo = rs.getString("c_hireinfo");
    	 String company_hireperson = rs.getString("c_hireperson");
    	 String company_info = rs.getString("c_info");
     
    	 
 %>
 
 <div data-role="content">
	
		<center>
			<h2>��� �� ����</h2>
			<ul data-role="listview">
        			<li data-role="list-divider"><h5><%=company_name%></h5></li>
        			<li>�ν� ��ȣ <%=booth_num%></li>
        			<li>��ǥ Ȩ������ <%=company_site%></li>
        			<li>ä�� ���� <%=company_hireinfo%></li>
        			<li>ä�� �ο� <%=company_hireperson%></li>
        			<li>ȸ�� �Ұ� <%=company_info%></li>
        			</ul> 
        			</center>
        			</div>
<% 
     }
 }
 catch (SQLException e) { // ����ó��
     out.println("err:"+e.toString());
 }

%>
</body>
</html>