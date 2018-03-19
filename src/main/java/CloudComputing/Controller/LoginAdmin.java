package CloudComputing.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import CloudComputing.Model.Accounts;
import CloudComputing.Service.NewsService;

@Controller
public class LoginAdmin {

	@Autowired
	private NewsService newService;

	@GetMapping("/login")
	public String login() {
		return "LoginAdmin";
	}

	@PostMapping("/loginadmin")
	public String LoginAdmins(@ModelAttribute Accounts accounts,BindingResult bindingResult, HttpServletRequest request) {

		if (request.getParameter("name").equals("admin") && request.getParameter("password").equals("admin")) {
			
			System.out.println("Hello Login successfull");
			
			request.setAttribute("newss", newService.findAllNews());
			request.setAttribute("mode", "LIST");
			return "HomeAdmin";

		} else {
			System.out.println("Hello Login fail");
			return "LoginAdmin";
		}

	}
}
