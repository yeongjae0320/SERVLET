<!-- db 연동 후 id(.getParameter)를 받는다. (기존 방법과 동일)
String 타입 상품 조회 쿼리 선언 및 초기화 
쿼리문 예) select * from product
prepareStatement 객체 생성한다.
쿼리를 수행한다.

rs 가 존재하는 경우 상품 삭제 쿼리로 초기화한다.
쿼리문 예) delete from product where p_id = ? 
prepareStatement 객체를 다시 생성
? 필드에 대한 지정을 setString으로 지정한다.
db 내부 필드 이름은 productId 이다.
쿼리를 수행한다.
 -->

<!-- db 연결 및 객체를 모두 해제하고 product_edit 페이지로 다시 돌아온다. -->
if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

	response.sendRedirect("product_edit.jsp?edit=update");
