<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name ="viewport" content ="width=device-width,initial-scale=1"/>
<title>���� ���</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
<link rel="stylesheet" href="jquery-mobile.css">
<script src="jquery-mobile.js"></script>
</head>
<body>
	
	<div data-role = "fieldcontain">
			<div class ="ui-bar ui-bar-b">�����Է�</div><br/>
				<input type="email" name ="userInfo_name" id ="userInfo_name" placeholder="�̸��� �Է��ϼ���.">
				<label for="gender">����</label>
					<select name="gender" id="userInfo_gender" data-role="slider">
						<option value="userInfo_gender_male">����</option>
						<option value="userInfo_gender_female">����</option>
					</select><br/><br/><br/>
			<label for="date">��������� �Է��ϼ���</label>
				<input type="date" name ="userInfo_date" id ="userInfo_date" data-role="none"><br/>		<br/><br/>
				<input type="email" name ="userInfo_email" id ="userInfo_email" placeholder="�̸����� �Է��ϼ���.">
				<input type="tel" name ="userInfo_email" id ="userInfo_email" placeholder="�ڵ����� �Է��ϼ���.">
		
			<input type="password" name ="userInfo_pw" id ="userInfo_pw" placeholder="��й�ȣ�� �Է��ϼ���.">
			

			<select name = "age" id ="age">
				<option>���ɴ븦 �����ϼ���</option>
				<option value= "num1">10~19��</option>
				<option value= "num1">20~29��</option>
				<option value= "num1">30~39��</option>
				<option value= "num1">40~49��</option>
				<option value= "num1" disabled= "disabled">50�� �̻�</option>
			</select>
			
			<select name = "major" id ="major">
				<option>������ �������ּ���</option>
				<option value= "major">�ι��迭</option>
				<option value= "major">��ȸ�迭</option>
				<option value= "major">�����迭</option>
				<option value= "major">���迭</option>
				<option value= "major">�̰��迭</option>
				<option value= "major">�����迭</option>
				<option value= "major">������</option>
				<option value= "major">�Ǿ�迭</option>
				<option value= "major">����迭</option>
				<option value= "major">��ü�ɰ迭</option>
				<option value= "major" disabled= "disabled">��Ÿ�迭</option>
			</select>
			
			<select name = "school" id ="major">
				<option>�����з� �������ּ���</option>
				<option value= "school">�� ��</option>
				<option value= "school">�� ��</option>
				<option value= "school">�� ��</option>
				<option value= "school">�� ��</option>
				<option value= "school">�� ��</option>
				
			</select>
			<ul>
			<label for="gender">�̷¼� ���� ��� </label>
			</ul><button data-icon ="check" data-inline="true">���� ��������</button>
		</div>		
</body>
</html>