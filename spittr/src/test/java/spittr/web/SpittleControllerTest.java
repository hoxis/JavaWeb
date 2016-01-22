package spittr.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hamcrest.core.IsCollectionContaining;
import org.junit.Test;
import org.mockito.Mockito;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.view.InternalResourceView;

import spittr.Spittle;
import spittr.data.SpittleRepository;

public class SpittleControllerTest {

	@Test
	public void shouldShowRecentSpittles() throws Exception {
		List<Spittle> expectedSpittles = createSpittleList(20);
		SpittleRepository mockRepository = Mockito.mock(SpittleRepository.class);
		Mockito.when(mockRepository.findSpittles(Long.MAX_VALUE, 20)).thenReturn(expectedSpittles);

		SpittleController controller = new SpittleController(mockRepository);
		MockMvc mockMvc = MockMvcBuilders.standaloneSetup(controller)
				.setSingleView(new InternalResourceView("/WEB_INF/views/spittles.jsp")).build();
		
		// 调用MockMvc.perform(RequestBuilder requestBuilder)发起一个http请求，然后将得到ResultActions
		mockMvc.perform(MockMvcRequestBuilders.get("/spittles"))// 添加验证断言来判断执行请求后的结果是否是预期的；
				.andExpect(MockMvcResultMatchers.view().name("spittles"))// view()：得到视图验证器；
				// 得到相应的***ResultMatchers后，接着再调用其相应的API得到ResultMatcher，
				// 如ModelResultMatchers.attributeExists(final String... names)判断Model属性是否存在。
				.andExpect(MockMvcResultMatchers.model().attributeExists("spittleList"))// model()：得到模型验证器；
				.andExpect(MockMvcResultMatchers.model().attribute("spittleList", IsCollectionContaining.hasItems(expectedSpittles.toArray())));
	}

	private List<Spittle> createSpittleList(int count) {
		List<Spittle> spittles = new ArrayList<Spittle>();
		for (int i = 0; i < count; i++) {
			spittles.add(new Spittle("Spittle ", new Date()));
		}
		return spittles;
	}

}
