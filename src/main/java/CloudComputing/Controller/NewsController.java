package CloudComputing.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class NewsController {
	
	@GetMapping("/hello")
	public String Home() {
		return "Hello Huy";
	}
}
