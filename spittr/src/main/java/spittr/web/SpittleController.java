package spittr.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import spittr.data.SpittleRepository;

@Controller
@RequestMapping("/spittles")
public class SpittleController {
	private SpittleRepository spittleRepository;

	// 将spittleRepository注入
	@Autowired
	public SpittleController(SpittleRepository spittleRepository) {
		this.spittleRepository = spittleRepository;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String spittles(Model model) {
		// 将spittles添加到model中
		model.addAttribute(spittleRepository.findSpittles(Long.MAX_VALUE, 20));
//		model.addAttribute("spittles", spittleRepository.findSpittles(Long.MAX_VALUE, 20));
		
		// 返回视图名称
		return "spittles";
	}
	
/*	@RequestMapping(method = RequestMethod.GET)
	public String spittles(Map model) {
		// 将spittles添加到model中
		model.put("spittles", spittleRepository.findSpittles(Long.MAX_VALUE, 20));
		
		// 返回视图名称
		return "spittles";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public List<Spittle> spittles() {
		// 返回视图名称
		return spittleRepository.findSpittles(Long.MAX_VALUE, 20);
	}*/
}
