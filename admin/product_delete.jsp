<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%
    String productId = request.getParameter("productId");

    // 상품 삭제 쿼리 선언 및 초기화
    String deleteQuery = "delete from product where p_id = ?";
    pstmt = conn.prepareStatement(deleteQuery);
    pstmt.setString(1, productId);
    
    // 쿼리를 수행하고 결과를 받아온다.
    int rowsAffected = pstmt.executeUpdate();

    // db 연결 및 객체를 모두 해제
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    // Product_edit 페이지로 다시 돌아온다. delete 모드
    response.sendRedirect("product_edit.jsp?edit=delete");
%>