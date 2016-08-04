package ugly_library3.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ugly_library3.model.Cart;
import ugly_library3.model.User;
import ugly_library3.model.dao.UserDao;


@Controller
@SessionAttributes({"user","cart"})
public class UserController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = "/user/login.html", method = RequestMethod.GET)
	public String login(){
		return "user/Login";
	}
	
	@RequestMapping(value = "/user/login.html", method = RequestMethod.POST)
	public String login(@RequestParam String username, @RequestParam String password, HttpSession session){
		List<User> users = userDao.getUsers();
		for (int i = 0; i < users.size(); i++){
			if (users.get(i).getUsername().equals(username) && users.get(i).getPassword().equals(password)){
				User user = users.get(i);
				Cart cart = new Cart();
				session.setAttribute("user", user);
				session.setAttribute("cart", cart);
            	return "redirect:main.html";
			}
		}
		return "redirect:login.html";
	}
	
	@RequestMapping(value = "user/signup.html", method = RequestMethod.GET)
	public String signUp(){
		return "user/SignUp";
	}
	
	@RequestMapping(value = "user/signup.html", method = RequestMethod.POST)
	public String signUp(@RequestParam String username, @RequestParam String password){
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		userDao.saveUser(user);
		return "redirect:login.html";
	}
	
	@RequestMapping(value = "user/editaccount.html", method = RequestMethod.GET)
	public String editAccount(){
		return "user/EditAccount";
	}
	
	@RequestMapping(value = "user/editaccount.html", method = RequestMethod.POST)
	public String signUp(@RequestParam String username, @RequestParam String password, HttpSession session){
		User user = (User) session.getAttribute("user");
		user.setUsername(username);
		user.setPassword(password);
		userDao.saveUser(user);
		return "redirect:main.html";
	}
	
	@RequestMapping(value = "/user/main.html")
	public String main(){
		return "user/Main";
	}
	
	@RequestMapping(value = "/user/signout.html")
	public String SignOut(SessionStatus status){
		status.setComplete();
		return "user/Login";
	}
	
	
}
