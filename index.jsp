<%@ page contentType = "text/html;charset=utf-8" %> <!-- 페이지 지시자 <&~&> -->
<%@ page import="example.*" %> <!-- example 하위에 있는 모든 소스코드를 연동해주겠다. -->
<%
    HelloWorld h = new HelloWorld();
%> <!-- new 연산자를 이용하여 객체 생성 해 줌. -->
<html>
<body>
    message = <%=h.hello() %>
</body>	
</html>
