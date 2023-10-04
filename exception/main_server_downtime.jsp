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
            서버 점검 공지
        </h1>
        <h2>
            404 ERROR
        </h2>
        <p>
            잘못된 페이지입니다.
        </p>
    </body>
</html>