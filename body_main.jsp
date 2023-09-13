<%@ page contentType = "text/html;charset=utf-8" %>
<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "꾸팡.COM에 오신것을 환영합니다.";
String tagline = "하단 페이지 : 확인";%>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
            <%=greeting%>
        </h1>
    </div>
</div>
<div class="card bg-dark text-white">
    <img src="image/top.jpg" class="card-img" alt="메인이미지">
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