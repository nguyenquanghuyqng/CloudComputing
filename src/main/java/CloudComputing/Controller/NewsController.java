package CloudComputing.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import CloudComputing.Service.NewsService;

@Controller
public class NewsController {
	
	@Autowired
	private NewsService newService;
	/*@GetMapping("/homeadmin")
	public String Home() {
		return "HomeAdmin";
	}*/
	
	/*@GetMapping("/news")
	public String News(HttpServletRequest request ) {
		request.setAttribute("newId", newService.findNews(1));
		return "News";
	}*/
	
}
