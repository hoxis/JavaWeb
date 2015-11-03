package activemq;

import org.springframework.beans.factory.annotation.Autowired;
import activemq.publisher.MessageSender;

public class TestSenderService {

	@Autowired
	private MessageSender messageSender;

	public void run() {
		messageSender.send("message");
	}

}
