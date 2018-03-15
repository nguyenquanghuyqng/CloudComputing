package CloudComputing.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeAdmin {
	
	@GetMapping("/homeadmin")
	public String Home() {
		return "HomeAdmin";
	}
	
}
