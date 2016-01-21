package spittr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // 声明一个控制器
@RequestMapping("/") // 控制器匹配路径
public class HomeController {

	@RequestMapping(method = RequestMethod.GET) // 处理GET请求
	public String home() {
		return "home";// 视图名称
	}

}
