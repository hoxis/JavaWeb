package spittr.web;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

// 声明控制器增强
@ControllerAdvice
public class AppWideExceptionHandler {

	// 定义异常处理方法
	@ExceptionHandler(DuplicateSpittleException.class)
	public String handleDuplicateSpittle() {
		return "error/duplicate";
	}

	@ExceptionHandler(SpittleNotFoundException.class)
	public String handleSpittleNotFound() {
		return "error/duplicate";
	}

}
