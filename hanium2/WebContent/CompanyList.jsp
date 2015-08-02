<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
      .jbBox {
        width: 200px;
        height: 200px;
        overflow: auto;
        margin-bottom: 20px;
      }
    </style>
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<script>
      $( document ).ready( function() {
        $( 'button' ).click( function() {
          alert( $( '.jbBox' ).scrollTop() );
        } );
      } );
    </script>
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


 Class.forName("com.mysql.jdbc.Driver"); // JDBC������ ���� Class�̸� ����

 String DB_URL = "jdbc:mysql://localhost:3306/mysql?useUnicode=true&characterEncoding=utf8";
 		// �⺻������ ��Ʈ 3306���� �ϰ� ����� db�� �̸��� �����ش�(mysql)

 String DB_USER = "root"; //  �����ͺ��̽��� �����ϴ� ���̵�
 String DB_PASSWORD= "0324"; // password

 try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // ������ ȹ��
	 Statement stmt = conn.createStatement(); // ���� Ȯ��
     String query = "SELECT c_name, b_number, r_submit FROM booth"; 
     ResultSet rs = stmt.executeQuery(query); // ������ ����!
 %>
 <center>
     <h1>������� ����Ʈ</h1>
     </center>
      
 <%
     while(rs.next()){                                                        // ����� �� �྿ ���ư��鼭 �����´�.

    	 String booth_num = rs.getString("b_number");
    	 String booth_name = rs.getString("c_name");
    	 String booth_apply = rs.getString("r_submit");
 %>

	<div data-role="content">
     <ul data-role="listview">
     <li><a href="CompanyInfo.jsp?booth_name=<%=booth_name%>&booth_num=<%=booth_num%>">	<%--�������� �̵��ϴ� �����۸�ũ --%>
        				<h2>[�ν���ȣ<%=booth_num%>] <%=booth_name %></h2>
        				<span class="ui-li-count">�̷¼� ���뿩�� <%=booth_apply%></span>
        		</a></li></ul></div>
<% 
     }
 }
 catch (SQLException e) { // ����ó��
     out.println("err:"+e.toString());
 }

%>
</body>
</html>