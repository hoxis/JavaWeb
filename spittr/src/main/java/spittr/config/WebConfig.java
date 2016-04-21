package spittr.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.spring3.SpringTemplateEngine;
import org.thymeleaf.spring3.view.ThymeleafViewResolver;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;
import org.thymeleaf.templateresolver.TemplateResolver;

@Configuration
@EnableWebMvc
@ComponentScan("spittr.web") // 激活Spring MVC
public class WebConfig extends WebMvcConfigurerAdapter {

	// 配置一个JSP视图解析器
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setExposeContextBeansAsAttributes(true);
		return resolver;
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

//	@Bean
//	public TilesConfigurer tilesConfigurer() {
//		TilesConfigurer tiles = new TilesConfigurer();
//		// 指定tile定义的位置
//		tiles.setDefinitions(new String[] { "/WEB-INF/layout/tiles.xml" });
//		// 开启刷新
//		tiles.setCheckRefresh(true);
//		return tiles;
//	}
//
//	@Bean
//	public ViewResolver tilesViewResolver() {
//		return new TilesViewResolver();
//	}

//	// Thymeleaf视图解析器
//	@Bean
//	public ViewResolver viewResolver(SpringTemplateEngine templateEngine) {
//		ThymeleafViewResolver viewResolver = new ThymeleafViewResolver();
//		viewResolver.setTemplateEngine(templateEngine);
//		return viewResolver;
//	}
//
//	// Thymeleaf驱动
//	@Bean
//	public TemplateEngine templateEngine(TemplateResolver templateResolver) {
//		SpringTemplateEngine templateEngine = new SpringTemplateEngine();
//		templateEngine.setTemplateResolver(templateResolver);
//		return templateEngine;
//	}
//
//	// 模版解析器
//	@Bean
//	public TemplateResolver templateResolver() {
//		TemplateResolver templateResolver = new ServletContextTemplateResolver();
//		templateResolver.setPrefix("/WEB-INF/templates/");
//		templateResolver.setSuffix(".html");
//		templateResolver.setTemplateMode("HTML5");
//		return templateResolver;
//	}

}
