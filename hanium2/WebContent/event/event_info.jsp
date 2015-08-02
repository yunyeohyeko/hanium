<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div data-role="content">

			<div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="false">
					<h3>이벤트 정보</h3>
					<p>
						<input type="text" placeholder="이벤트 번호"> <input
							type="text" placeholder="기업"> <input type="text"
							placeholder="이벤트명"> <input type="text"
							placeholder="이벤트 소개"><input type="text"
							placeholder="이벤트 상태"> <input type="text"
							placeholder="이벤트 추첨 시간"> <input type="text"
							placeholder="이벤트 대상"> <input type="text"
							placeholder="참여 인원/추첨 인원"> <input type="text"
							placeholder="당첨 상품"> <input type="text"
							placeholder="당첨 상품 수령지">
					</p>
				</div>
				<div data-role="collapsible">
					<h3>내 응모 현황</h3>
					<p>1. 응모 2. 미응모 3. 당첨(상품명 까지) 4. 미당첨 5. 이벤트가 진행중입니다.</p>
					<a href="#" data-role="button" data-icon="check">응모하기</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>