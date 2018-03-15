package CloudComputing.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	private static final String PATH = "NewsHome";
	
	@GetMapping("/newshome")
	public String home() {
		return PATH;
	}
}
