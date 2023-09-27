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
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(Tshirts1);
		listOfProducts.add(Shirts1);
		listOfProducts.add(Shirts2);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

}