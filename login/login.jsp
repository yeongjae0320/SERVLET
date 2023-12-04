<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        var mouseMoved = false;
    // 마우스 이동 감지
    document.addEventListener('mousemove', function () {
        mouseMoved = true;
    });
    // 페이지가 로드될 때 mouseMoved를 false로 초기화
    window.addEventListener('load', function () {
        mouseMoved = false;
        resetMouseDetection();
    });
    function resetMouseDetection() {
        setTimeout(function () {
            if (!mouseMoved) {
                // 마우스가 10초 동안 움직이지 않았을 때 실행할 동작
                alert("일정 시간 동안 마우스 움직임이 감지되지 않아 메인 페이지로 이동합니다.");
                window.location.href = '../index.jsp';
            }
        }, 10000); // 10초 설정 (단위: 밀리초)
    }
    // 페이지가 다시 로드되었을 때 타이머를 재설정
    window.addEventListener('focus', function () {
        resetMouseDetection();
    });
    </script>
    </head>
<body>
	<jsp:include page="../top_menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">관리자 모드 접근 - 로그인이 필요합니다.</h1>
            <!-- <h1 class="display-3">일반 사용자 모드 접근 - 로그인이 필요합니다.</h1> -->
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%> 
            <form class="form-signin" action="j_security_check" method="post">
			<div class="form-group">
				<label for="inputUserName" class="sr-only">User Name</label> 
				<input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="sr-only">Password</label> 
				<input  type="password" class="form-control" placeholder="Password" name='j_password' required>
			</div>
			<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
            <button class="btn btn btn-lg btn-success btn-block" type="submit">회원가입</button>
		</form>
	</div>
</div>
</body>
</html>