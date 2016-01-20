package spittr.web;

import org.junit.Test;

public class HomeControllerTest {

	@Test
	public void testHomePage() {
		HomeController controller = new HomeController();
		System.out.println(controller.home());
	}

}
