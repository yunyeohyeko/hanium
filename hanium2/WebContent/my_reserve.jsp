<%@ page  contentType="text/html;charset=utf-8" import="java.sql.*" %>
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

<%
 String phonenumber = request.getParameter("phonenumber");
%>

 <div data-role="header">
	<h1>부스 예약 목록</h1>
	</div>
<%

 Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정

 String DB_URL = "jdbc:mysql://118.222.16.84:3306/javadb?useUnicode=true&characterEncoding=utf8";
 		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(javadb)

 String DB_USER = "root"; //  데이터베이스에 접근하는 아이디
 String DB_PASSWORD= "c4iuser1!"; // password
 int wait_people = 0;
 String wait_person = null;
 String cnt = null;

java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy년 MM월 dd일");
String today = formatter.format(new java.util.Date());


 try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득
	 Statement stmt = conn.createStatement(); // 상태 확인
     String query = "SELECT b_number, c_name, w_number FROM reservation WHERE u_phonenumber = " + phonenumber; 
     ResultSet rs = stmt.executeQuery(query); // 쿼리문 실행!
     
     
     Statement stmt3 = conn.createStatement(); // 상태 확인
     String query3 = "SELECT count(b_number) cnt FROM reservation WHERE u_phonenumber = " + phonenumber; 
     ResultSet rs3 = stmt3.executeQuery(query3); // 쿼리문 실행!
     
     while(rs3.next()){        
    	 cnt = rs3.getString("cnt");
     }
     
%>       
  
  
	<div data-role="content">
		<ul data-role="listview" id="my_reserve_list" >
		<li data-role='list-divider' id='listitle'>부스 예약 수 : <%=cnt%>개
				<p class="ui-li-aside"><%=today%></p>
		</li>

		
<%     
     while(rs.next()){                                                        // 결과를 한 행씩 돌아가면서 가져온다.

    	 String booth_num = rs.getString("b_number");
    	 String booth_name = rs.getString("c_name");
    	 String booth_wait_num = rs.getString("w_number");
    	 
    	 
    	 Statement stmt2 = conn.createStatement(); // 상태 확인
         String query2 = "SELECT min(w_number) as min FROM reservation WHERE b_number = '" + booth_num + "'"; 
         ResultSet rs2 = stmt2.executeQuery(query2); // 쿼리문 실행!
         
         while(rs2.next()){  
        	 String booth_wait_number_min = rs2.getString("min");
        	 wait_people = Integer.parseInt(booth_wait_num) - Integer.parseInt(booth_wait_number_min);  
        	 
			if(wait_people == 0){
				wait_person = "대기자수 : " + wait_people + "명<br>부스에 입장하세요.";
			}
			else{
				wait_person = "대기자수 : " + wait_people + "명";
			}
         }

    	 	 
 %>


			<li><a href="booth_cancel.jsp?booth_name=<%=booth_name%>&phonenumber=<%=phonenumber%>">
					<h4>[<%=booth_num%>부스] &nbsp<%=booth_name%> 예약 중</h4>
					<p>대기순서 <%=booth_wait_num%>번</p>
					<span class="ui-li-count"><%=wait_person%></span>
			</a></li>


 
<% 
     }
 }
 catch (SQLException e) { // 예외처리
     out.println("err:"+e.toString());
 }

%>
</div>

	
</body>
</html>