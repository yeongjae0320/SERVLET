<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%
    Connection conn = null;	

    String url = "jdbc:mysql://localhost:3306/ggouppang_20200973?characterEncoding=utf8";
    String user = "root";
    String password = "123654";

    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, password);

	String productId = request.getParameter("id");

	PreparedStatement pstmt = null;    //문제발생,없으면 오류는 안생기지만 삭제가안됨.
	ResultSet rs = null;    //문제발생,없으면 오류는 안생기지만 삭제가안됨.
	
	String sql = "Select * From product";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {
 	    // p_id가 ~인 레코드 삭제
		sql = "Delete from product where p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		pstmt.executeUpdate();
	} else {
		out.println("일치하는 상품이 없습니다.");
	}
	
	if (rs != null) { rs.close(); }
	if (pstmt != null) { pstmt.close(); }
	if (conn != null) { conn.close(); }
	
	// 상품 삭제 페이지로 이동
	response.sendRedirect("product_edit.jsp?edit=delete");
%>