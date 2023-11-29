<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 예매</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #e50914;
        }

        label {
            font-weight: bold;
        }

        select,
        input[type="date"] {
            padding: 5px;
            margin-right: 10px;
        }

        button {
            padding: 5px 10px;
            background-color: #e50914;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button:hover {
            background-color: #c70711;
        }

        form {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>영화 예매</h1>
    <form id="movieSelect" action="movieSelectPro.mo" method="POST">
	    <!-- 영화 선택 -->
	    <label for="movie">영화:</label>
	    <select name="movie">
	        <option value="">선택하세요</option>
	        <option value="아이언맨">아이언맨</option>
	        <option value="토르">토르</option>
	        <option value="어벤져스">어벤져스</option>
	    </select>
	    <button onclick="editMovie()">수정</button>
	    
	    <!-- 상영관 선택 -->
	    <label for="theater">상영관:</label>
	    <select name="theater">
	        <option value="">선택하세요</option>
	        <option value="서면">서면</option>
	        <option value="동래">동래</option>
	        <option value="남포">남포</option>
	    </select>
	    <button onclick="editTheater()">수정</button>
	    
	    <!-- 날짜 선택 -->
	    <label for="date">날짜:</label>
	    <input type="date" name="date">
	    <button onclick="editDate()">수정</button>
	    
	    <!-- 시간 선택 -->
	    <label for="time">시간:</label>
	    <select name="time">
	        <option value="">선택하세요</option>
	        <option value="10:00">10:00</option>
	        <option value="12:00">12:00</option>
	        <option value="14:00">14:00</option>
	    </select>
	    <button onclick="editTime()">수정</button>
	    
	    <!-- 좌석 선택 -->
        <button type="submit">좌석 선택</button>
    </form>
    
    <script>
        function editMovie() {
            var selectedMovie = document.getElementById("movie").value;
            // 영화 데이터 수정 로직 추가
            console.log("선택한 영화: " + selectedMovie);
            document.getElementById("selectedMovie").value = selectedMovie;
        }
        
        function editTheater() {
            var selectedTheater = document.getElementById("theater").value;
            // 상영관 데이터 수정 로직 추가
            console.log("선택한 상영관: " + selectedTheater);
            document.getElementById("selectedTheater").value = selectedTheater;
        }
        
        function editDate() {
            var selectedDate = document.getElementById("date").value;
            // 날짜 데이터 수정 로직 추가
            console.log("선택한 날짜: " + selectedDate);
            document.getElementById("selectedDate").value = selectedDate;
        }
        
        function editTime() {
            var selectedTime = document.getElementById("time").value;
            // 시간 데이터 수정 로직 추가
            console.log("선택한 시간: " + selectedTime);
            document.getElementById("selectedTime").value = selectedTime;
        }
    </script>
</body>
</html>
