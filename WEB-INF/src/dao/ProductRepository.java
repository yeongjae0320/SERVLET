package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {    //실제 상품들의 정보를 set 해주는 함수
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();    //ArrayList를 Product로 캐스팅
    
    public ProductRepository() {
        Product Tshirts1 = new Product("P1234", "베이직 데일리 긴팔 티셔츠", 9900);
		Tshirts1.setDescription("품번:BEZK5101B01, 색상:WHITE, 원단:겉감-면100%");
		Tshirts1.setCategory("Top");
		Tshirts1.setManufacturer("CHASECULT");
		Tshirts1.setUnitsInStock(1000);
		Tshirts1.setCondition("New");

        Product Shirts1 = new Product("P1235", "옥스포드 와이드 셔츠", 58000);
		Shirts1.setDescription("4 COLORS(CREAM/LIGHT GREY(품절)/SKY BLUE/SAX BLUE)");
		Shirts1.setCategory("Top");
		Shirts1.setManufacturer("XEROBNR");
		Shirts1.setUnitsInStock(1000);
		Shirts1.setCondition("Refurbished");

		Product Shirts2 = new Product("P1236", "오버핏 포켓 캔버스 셔츠", 45000);
		Shirts2.setDescription("[무료반품], 5 COLORS(SAND BEIGE/BEIGE/SMOKE GREEN/OLIVE KNAKI/BLACK)");
		Shirts2.setCategory("Top");
		Shirts2.setManufacturer("TONES");
		Shirts2.setUnitsInStock(1000);
		Shirts2.setCondition("Old");
        
        Product Outer1 = new Product("P1237", "울 해링턴 자켓", 79900);
		Outer1.setDescription("[무료반품], [리뉴얼], 우아한 실루엣의 고급스러운 무드가 돋보이는 해링턴 자켓, ZIPPER:2-WAY");
		Outer1.setCategory("Outer");
		Outer1.setManufacturer("TONES");
		Outer1.setUnitsInStock(1000);
		Outer1.setCondition("Refurbished");
        
        Product Outer2 = new Product("P1238", "후디드 윈드 브레이커", 68900);
		Outer2.setDescription("오더블유오씨에서 직접 개발한 등고선 아트웍을 이용한 윈드 브레이커, 안감 상부 매시 원단 사용으로 통기성 확보");
		Outer2.setCategory("Outer");
		Outer2.setManufacturer("OWOC");
		Outer2.setUnitsInStock(1000);
		Outer2.setCondition("New");
        
        Product Outer3 = new Product("P1239", "코튼 스트링 점퍼", 60000);
		Outer3.setDescription("FABRIC:COTTON 100%, WASHING:DRY CLEAN/DO NOT BLEACH, 소매 버튼 여밈");
		Outer3.setCategory("Outer");
		Outer3.setManufacturer("VTWO");
		Outer3.setUnitsInStock(1000);
		Outer3.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(Tshirts1);
		listOfProducts.add(Shirts1);
		listOfProducts.add(Shirts2);
        listOfProducts.add(Outer1);
        listOfProducts.add(Outer2);
        listOfProducts.add(Outer3);
        
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

}