package spittr.data;

import java.util.List;
import spittr.Spittle;

public interface SpittleRepository {
	/**
	 * @param max
	 *            待返回的最大的Spittle ID
	 * @param count
	 *            返回Spittle对象的个数
	 * @return
	 */
	List<Spittle> findSpittles(long max, int count);
}
