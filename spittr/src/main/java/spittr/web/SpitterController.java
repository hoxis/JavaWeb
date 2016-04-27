package spittr.web;

import javax.servlet.http.Part;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;

import spittr.Spitter;
import spittr.data.SpitterRepository;

@Controller
@RequestMapping("/spitter")
public class SpitterController {

	private SpitterRepository spitterRepository;

	public SpitterController() {
	}

	// 注入SpitterRepository
	@Autowired
	public SpitterController(SpitterRepository spitterRepository) {
		this.spitterRepository = spitterRepository;
	}

	// 处理来自/spitter/register的get请求
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegistrationForm(Model model) {
		model.addAttribute(new Spitter());
		return "registerForm";
	}

//	@RequestMapping(value = "/register", method = RequestMethod.POST)
//	public String processRegistration(@RequestPart("profilePicture") byte[] profilePicture, @Valid Spitter spitter,
//			Errors errors) {
//		if (errors.hasErrors()) {
//			return "registerForm";
//		}
//		// 保存Spitter
//		spitterRepository.save(spitter);
//		// 重定向到新的页面
//		return "redirect:/spitter/" + spitter.getUsername();
//	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String processRegistration(@RequestPart("profilePicture") Part profilePicture, @Valid Spitter spitter,
			Errors errors) {
		if (errors.hasErrors()) {
			return "registerForm";
		}
		// 保存Spitter
		spitterRepository.save(spitter);
		// 重定向到新的页面
		return "redirect:/spitter/" + spitter.getUsername();
	}

	@RequestMapping(value = "/{username}", method = RequestMethod.GET)
	public String showSpitterProfile(@PathVariable("username") String username, Model model) {
		Spitter spitter = spitterRepository.findByUsername(username);
		model.addAttribute(spitter);
		return "profile";
	}

}
