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
			<select name="event_date" id="event_date" data-iconpos="left"
				data-native-menu="false">
				<option>날짜 선택</option>
				<option>전체</option>
				<option>2015-08-01</option>
				<option>2015-08-02</option>
				<option>2015-08-03</option>
			</select>

			<ul data-role="listview" data-filter="true"
				data-filter-placeholder="검색 키워드를 입력하세요">

				<li data-role='list-divider' id='listitle'>2015-08-01 <span
					class="ui-li-count">4개</span>
				</li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">당첨</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">미당첨</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">진행</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">진행</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>


				<li data-role='list-divider' id='listitle'>2015-08-02 <span
					class="ui-li-count">4개</span>
				</li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">당첨</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">미당첨</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">진행</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>

				<li><a href='event_info.jsp'>
						<h4>국민은행</h4>
						<p>이력서 사진 무료 촬영 이벤트!</p> <span class="ui-li-count">진행</span>
						<p class="ui-li-aside">16:00 추첨</p>
				</a></li>
			</ul>
		</div>
	</div>
</body>
</html>