<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="page">

		<div data-role="header">
			<a href="#" data-icon="grid" data-iconpos="notext"></a>
			<a href="#" data-icon="home" data-iconpos="notext"></a>
				<h1>������ �ڶ�ȸ</h1>
		</div>
		
<%

 Class.forName("com.mysql.jdbc.Driver"); // JDBC������ ���� Class�̸� ����

 String DB_URL = "jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf8";
 		// �⺻������ ��Ʈ 3306���� �ϰ� ����� db�� �̸��� �����ش�(jsp)

 String DB_USER = "root"; //  �����ͺ��̽��� �����ϴ� ���̵�
 String DB_PASSWORD= "0324"; // password

 try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // ������ ȹ��
	 Statement stmt = conn.createStatement(); // ���� Ȯ��
     String query = "SELECT b_number, c_name FROM expo"; 
     ResultSet rs = stmt.executeQuery(query); // ������ ����!
%>
<center>
<h1>�ڶ�ȸ ��ġ��</h1>
</center>
<% 


     while(rs.next()){                                                        // ����� �� �྿ ���ư��鼭 �����´�.

    	 String booth_num = rs.getString("b_number");
    	 String booth_name = rs.getString("c_name"); 
 %>
	<div data-role="content">
	
		<center>
					<ul data-role="listview">
        			<li>
        			<h5>[�ν���ȣ <%=booth_num%>] ��������� : <%=booth_name %></h5>
        			</li>
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