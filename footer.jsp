<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>
<footer class="container">
     <p> <br> &copy; 쇼핑몰 대표 : 김영재, 고유번호 : 20200973, 연락처 : poweryjkim@naver.com <br> 
        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
</footer>