<%@ page contentType="text/html;charset=utf-8"
	import="java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");

	String booth_no = request.getParameter("booth_no");
	String booth_name = request.getParameter("booth_name");
	String phonenumber = request.getParameter("phonenumber");
	Connection con;
	String URL = "jdbc:mysql://118.222.16.84:3306/javadb?useUnicode=true&characterEncoding=utf8"; // 아까 예제에서와 마찬가지로 url을 설정하죠
	

	ResultSet rs   = null;
	String max_wait_num = null;
	String max = null;
	int wait_num = 0;

	
	try {   
    

		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection(URL, "root", "c4iuser1!");
		
		Statement stmt = con.createStatement(); // 상태 확인
	    String query = "SELECT max(w_number) as maxnum FROM reservation WHERE b_number = '" + booth_no + "'";
	    rs = stmt.executeQuery(query); // 쿼리문 실행!
	    
	    while(rs.next()){  
	    	max = rs.getString("maxnum");
	    	
	    	if(rs.getString("maxnum") == null){ 
				wait_num = 1; 
			} 
			else{
		    	wait_num = Integer.parseInt(max)+1;
			}
		}

		
		String sql = "INSERT IGNORE INTO reservation(u_phonenumber,b_number,c_name,w_number) VALUES(?,?,?,?)"; // sql문 작성
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,phonenumber); 
		pstmt.setString(2,booth_no);
		pstmt.setString(3,booth_name);
		pstmt.setInt(4,wait_num);

		
		pstmt.executeUpdate(); // sql문 실행(부스예약 DB 추가 실행)
		
		pstmt.close();
		con.close();
	}
	catch(ClassNotFoundException e) // 예외처리
	{
		out.println(e);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
	response.sendRedirect("my_reserve.jsp?phonenumber=" + phonenumber); 	
	
	
%>



<body>
</body>