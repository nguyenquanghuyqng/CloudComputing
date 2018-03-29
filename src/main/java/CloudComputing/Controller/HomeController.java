package CloudComputing.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import CloudComputing.Service.NewsService;

@Controller
public class HomeController {

	private static final String PATH = "NewsHome";
	@Autowired
	private NewsService newService;
	
	@GetMapping("/newshome")
	public String home(HttpServletRequest request ) {
		request.setAttribute("ListNew", newService.findAllNews());
		return PATH;
	}
	
	@GetMapping("/news")
	public String News(@RequestParam int id ,HttpServletRequest request ) {
		request.setAttribute("newId", newService.findNews(id));
		return "News";
	}
}
