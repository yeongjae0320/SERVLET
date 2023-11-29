# SERVLET_JSP 20200973 김영재

### 2023년 9월 6일 : 프로젝트 환경 설정, HELLO WORLD 확인 안료, 쇼핑몰 메인 페이지 - 2주차

 기존 index.jsp 파일 body태그 안으로 부트스트랩 ui를 적용하여 메뉴바와 점보트론, 텍스트 컨테이너, 하단 영역을 만들었다.
한글 깨짐 문제를 해결하기 위해서 파일의 첫 시작은 페이지 지시자를 사용하여 HTML 콘텐츠를 생성하겠고, UTF-8 문자 집합을 사용한다고 정하였다.
최하단 상태바에 날짜를 출력하는 자바 코드를 스크립트 릿 안에 작성하였고, 자바 라이브러리를 사용하기위해 import문을 사용하여 클래스 컴파일 에러 문제를 해결하였다.

### 2023년 9월 13일 : 쇼핑몰 메인 페이지 모듈화 완료 - 3주차

 2주차에 만들었던 index.jsp의 메인화면을 파일로 분리했다.
기존 index.jsp에서 body태그안에 내용을 include 지시문을 사용하여 파일을 불러오는 것으로 수정하였다.
기존 부트스트랩 링크를 새로운 링크로 업데이트해주고, index.jsp의 메인화면을 3가지로 분류하였다.
top_menu.jsp에는 index.jsp에 작성하였던 메뉴바를 넣어주고, body_main.jsp에는 텍스트 컨테이너를 넣어주고, 
footer.jsp에는 날짜를 출력하는 최하단 상태바를 넣어주었다.
주제를 의류 쇼핑몰로 잡아 의류 쇼핑몰에 어울리는 이미지 배너를 1개 다운받아 image 폴더를 만들어 업로드하였다.
최상단 배너 영역을 따로 분리하여 top_banner.jsp를 만들었다. index.jsp에는 top_banner.jsp를
include 지시문을 사용하여 파일을 불러오게 하였고, top_banner.jsp는 img태그를 작성하였다.
top_menu.jsp의 메뉴바에 드롭다운 메뉴를 추가하고 로고 이미지를 삽입하였다.
그리고 로고 이미지 옆에는 가로로 로그인, 회원가입, 고객센터 메뉴가 나열되게 하였다.
body_main.jsp에는 큰 텍스트를 넣고 하단 오버레이 이미지를 직접 만들어 img태그 안에 넣고,
오버레이 이미지 아래에는 목록 그룹을 만들었다.
최하단 footer.jsp에는 이름, 학번, 이메일 주소를 작성하였고, 현재 접속 시간을 알려주는 2주차에 사용했던
스크립트 릿 안 Date 코드를 가져와 작성하였다.
index.jsp에 현재 페이지 버퍼 용량과 남은 페이지 버퍼 용량을 알려주게 버퍼 처리를 하였다.
<br>
<br>
 * 연습문제 -> 기존 jsp 파일 스크립트 릿 안에 작성하였던 시간 출력 코드는 새로운 java 파일을 만들어 분리시켰다.
그리고 footer.jsp 헤더부분에 import문으로 이 코드를 가져오게 하여 출력하게 하였다. 그렇지만  강의안대로 시간 출력 코드를 작성할 시 정확한 대한민국의 시간이 뜨지 않아 새로운 코드로 작성하였다.
패키지를 선언하고, 라이브러리를 임포트하고, 한국 표준시로 시간대를 설정하고 Calendar 클래스를 사용하여 
현재 시간을 시, 분, 초로 분리한 후 최종 시간 문자열을 만들어 반환하였다.

### 2023년 9월 27일 : 쇼핑몰 상품 목록 페이지 추가 - 5주차

### 2023년 10월 4일 : 쇼핑몰 상품 상세 페이지 추가 - 6주차

### 2023년 10월 11일 : 쇼핑몰 상품 등록 추가 - 7주차

### 2023년 10월 25일 : 쇼핑몰 로그인 기능 추가 - 9주차

### 2023년 11월 1일 : 세션 및 장바구니 기능 추가 - 10주차

### 2023년 11월 8일 : 쇼핑몰 주문 처리 페이지 추가 - 11주차

### 2023년 11월 15일 : 쇼핑몰 상품 관리 페이지 추가(1) - 12주차

### 2023년 11월 22일 : 쇼핑몰 상품 관리 페이지 추가(2) - 13주차

### 2023년 11월 29일 : 쇼핑몰 게시판 추가 - 14주차
