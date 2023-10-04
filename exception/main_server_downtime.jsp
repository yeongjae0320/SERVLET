<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<html>
    <head>
        <title>메인 페이지 예외 처리</title>
    </head>
    <body>
        <style>
            body {
                background-color: beige;
                width: 500px;
                margin: 0 auto;
            }
            h1 {
                font-size: 50px;
                font-weight: bold;
                text-align: center;
                margin-top: 150px;
                color: red;
            }
            h2 {
                font-size: 30px;
                font-weight: bold;
                text-align: center;
                margin-top: 30px;
            }
            p {
                font-size: 20px;
                font-weight: bold;
                text-align: center;
            }
        </style>
        <h1>
            404 ERROR
        </h1>
        <h2>
            잘못된 페이지입니다.
        </h2>
        <p>
            올바른 접근을 통하여 사이트를 재접속 해주세요.
        </p>
    </body>
</html>