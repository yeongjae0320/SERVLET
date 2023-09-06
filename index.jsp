<%@ page contentType = "text/html;charset=utf-8" %> <!-- 페이지 지시자 <&~&> -->
<%@ page import="example.*" %> <!-- example 하위에 있는 모든 소스코드를 연동해주겠다. -->
<%
    HelloWorld h = new HelloWorld();
%> <!-- new 연산자를 이용하여 객체 생성 해 줌. -->
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <title>Welcome</title>
    </head>
<body>
    <%-- JSP 주석 처리 --%>
    <nav class="navbar navbar-expand  navbar-dark bg-dark">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="./index.jsp">Home</a>
            </div>
        </div>
    </nav>
    <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
    <%! String greeting = "Welcome to Web Shopping Mall";
    String tagline = "Welcome to Web Market!";%>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
            </h1>
        </div>
    </div>
    <div class="container">
        <div class="text-center">
            <h3>
                <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>
    <footer class="container">
        <p>&copy; WebMarket</p>
    </footer>
</body>	
</html>
