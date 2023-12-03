<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="../top_menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 가입</h1>
		</div>
	</div>
<div class="container">
    <form class="form-signin" action="login_user.jsp" method="post">
        <div class="form-group row">
            <label for="inputUserid" class="col-sm-2 col-form-label">아이디</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name='id' required autofocus>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">패스워드</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" name='password' required>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputRePassword" class="col-sm-2 col-form-label">패스워드 재입력</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" name='rePassword' required>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputName" class="col-sm-2 col-form-label">이름</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name='name' required>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputGender" class="col-sm-2 col-form-label">성별</label>
            <div class="col-sm-2">
                <select class="form-control" name="gender">
                    <option value="남자">남자</option>
                    <option value="여자">여자</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputEmail" class="col-sm-2 col-form-label">메일주소</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" placeholder="example@gmail.com" name='mail' required>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputPhone" class="col-sm-2 col-form-label">폰번호</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name='phone' required>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputAddress" class="col-sm-2 col-form-label">주소</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name='address' required>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-12">
                <button class="btn btn-primary" type="submit">가입</button>
                <a class="btn btn-success" href="../index.jsp">로그인(이전페이지)</a>
            </div>
        </div>
    </form>
</div>
</body>
</html>