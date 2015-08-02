<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name ="viewport" content ="width=device-width,initial-scale=1"/>
<title>정보 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
<link rel="stylesheet" href="jquery-mobile.css">
<script src="jquery-mobile.js"></script>
</head>
<body>
	
	<div data-role = "fieldcontain">
			<div class ="ui-bar ui-bar-b">정보입력</div><br/>
				<input type="email" name ="userInfo_name" id ="userInfo_name" placeholder="이름을 입력하세요.">
				<label for="gender">성별</label>
					<select name="gender" id="userInfo_gender" data-role="slider">
						<option value="userInfo_gender_male">남자</option>
						<option value="userInfo_gender_female">여자</option>
					</select><br/><br/><br/>
			<label for="date">생년월일을 입력하세요</label>
				<input type="date" name ="userInfo_date" id ="userInfo_date" data-role="none"><br/>		<br/><br/>
				<input type="email" name ="userInfo_email" id ="userInfo_email" placeholder="이메일을 입력하세요.">
				<input type="tel" name ="userInfo_email" id ="userInfo_email" placeholder="핸드폰을 입력하세요.">
		
			<input type="password" name ="userInfo_pw" id ="userInfo_pw" placeholder="비밀번호를 입력하세요.">
			

			<select name = "age" id ="age">
				<option>연령대를 선택하세요</option>
				<option value= "num1">10~19세</option>
				<option value= "num1">20~29세</option>
				<option value= "num1">30~39세</option>
				<option value= "num1">40~49세</option>
				<option value= "num1" disabled= "disabled">50세 이상</option>
			</select>
			
			<select name = "major" id ="major">
				<option>전공을 선택해주세요</option>
				<option value= "major">인문계열</option>
				<option value= "major">사회계열</option>
				<option value= "major">법정계열</option>
				<option value= "major">상경계열</option>
				<option value= "major">이과계열</option>
				<option value= "major">공과계열</option>
				<option value= "major">토목공학</option>
				<option value= "major">의약계열</option>
				<option value= "major">사범계열</option>
				<option value= "major">예체능계열</option>
				<option value= "major" disabled= "disabled">기타계열</option>
			</select>
			
			<select name = "school" id ="major">
				<option>최종학력 선택해주세요</option>
				<option value= "school">중 졸</option>
				<option value= "school">고 졸</option>
				<option value= "school">대 졸</option>
				<option value= "school">대 제</option>
				<option value= "school">학 사</option>
				
			</select>
			<ul>
			<label for="gender">이력서 파일 등록 </label>
			</ul><button data-icon ="check" data-inline="true">파일 가져오기</button>
		</div>		
</body>
</html>