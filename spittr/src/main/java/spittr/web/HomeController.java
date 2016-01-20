package spittr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // 声明一个控制器
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET) // 处理GET请求
	public String home() {
		return "home";
	}

}
