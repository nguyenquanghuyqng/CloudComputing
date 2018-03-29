package CloudComputing.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import CloudComputing.Model.News;
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
			newService.delete(id);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete news");
		}
		request.setAttribute("newss", newService.findAllNews());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/edit-news")
	public String EditNews(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("newss", newService.findNews(id));
		request.setAttribute("mode", "EDIT");
		return PATH;
	}
	
	@GetMapping("/update-news")
	public String UpdateNews(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("newss", newService.findAllNews());
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	
	@GetMapping("/add-news")
	public String AddNews( HttpServletRequest request) {
		request.setAttribute("mode", "NEW");
		return PATH;
	}
	
	@PostMapping("/save-news")
	public String SaveNews(@ModelAttribute News news, BindingResult bindingResult,
			HttpServletRequest request) {
		
		String announce = null;		
		if(news.getId()==0)
		{
			announce = "add new news";
		} else announce = "update news";
		
		try {
			request.setCharacterEncoding("UTF-8");
			newService.Save(news);
				request.setAttribute("announce", "You "+ announce +" successfully");
		} catch (Exception e) {
				request.setAttribute("announce", "Error when you " + announce);
		}
		
		request.setAttribute("newss", newService.findAllNews());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
}
