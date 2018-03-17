package CloudComputing.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/delete-news")
	public String DeleteNews(@RequestParam int id, HttpServletRequest request) {
		try {
			newService.Delete(id);
			request.setAttribute("announce", "You delete successfully");
			System.out.println("Delete Successfull");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete candidate");
			System.out.println("Delete Error");
		}
		request.setAttribute("newss", newService.findAllNews());
		request.setAttribute("announcement", "Show data successfull");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/add-news")
	public String AddNews( HttpServletRequest request) {
		request.setAttribute("mode", "NEW");
		return PATH;
	}
	
}
