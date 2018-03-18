package CloudComputing.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import CloudComputing.Model.Accounts;
import CloudComputing.Service.AccountService;;

@Controller 
public class LoginAdmin {
	private AccountService accountService;
	@GetMapping("/admin")
	private String login()
	{
		return "LoginAdmin";
	}
//	@GetMapping("/HomeAdmin")
//	private String Login(HttpServletRequest request)
//	{
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		
//	}

}
