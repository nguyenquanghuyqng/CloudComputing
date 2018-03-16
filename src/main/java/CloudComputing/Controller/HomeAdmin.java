package CloudComputing.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import CloudComputing.Service.NewsService;

@Controller
public class HomeAdmin {

	private static final String PATH = "ManageNews";
	@Autowired
	private NewsService newService;

	@GetMapping("/manage-news")
	public String ManageNews(HttpServletRequest request) {
		request.setAttribute("newss", newService.findAllNews());
		request.setAttribute("announcement", "Show data successfull");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
}
