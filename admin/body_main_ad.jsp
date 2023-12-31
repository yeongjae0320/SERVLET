<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%! String greeting = "현재 페이지는 의류 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>
    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
        ProductRepository dao = ProductRepository.getInstance();
	    ArrayList<Product> listOfProducts = dao.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">의류 상품 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
<div class="card bg-dark text-white">
    <img src="image/body_image.jpg" class="card-img" alt="메인이미지">
    <div class="card-img-overlay">
        <h5 class="card-title">
            의류 시즌 이벤트
        </h5>
        <p class="card-text">
            출처 : 김영재
        </p>
    </div>
</div>
<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        F/W 상의 브랜드 시리즈
    </a>
    <a href="#" class="list-group-item list-group-item-action">F/W 하의 브랜드 시리즈</a>
    <a href="#" class="list-group-item list-group-item-action">F/W 아우터 브랜드 시리즈</a>
    <a href="#" class="list-group-item list-group-item-action">F/W 신발 브랜드 시리즈</a>
    <a href="#" class="list-group-item list-group-item-action">F/W 가방 브랜드 시리즈</a>
</div>
<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>