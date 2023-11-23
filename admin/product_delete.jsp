<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import = "java.sql.*"%>
<%@ include file = "../db/db_conn.jsp" %>
<%
    String productId = request.getParameter("productId");

    String sql = "SELECT * FROM product WHERE p_id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, productId);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        // 삭제 쿼리
        sql = "DELETE FROM product WHERE p_id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, productId);
        pstmt.executeUpdate();
    }

    if (rs != null)
        rs.close();
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("product_edit.jsp?edit=update");
%>
<!-- 아직 완성하지못함. -->