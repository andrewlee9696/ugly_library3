package ugly_library3.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ugly_library3.model.Book;
import ugly_library3.model.Cart;
import ugly_library3.model.User;
import ugly_library3.model.dao.BookDao;
import ugly_library3.model.dao.UserDao;
import ugly_library3.service.BorrowAndReturnService;


@Controller
@SessionAttributes({"user","cart"})
public class ReturnController {
	
	@Autowired
	private BookDao bookDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	BorrowAndReturnService borrowAndReturnService;
	
	@RequestMapping(value = "/return/returnBooks.html")
	public String returnBooks(@ModelAttribute("models") ModelMap models, HttpSession session){
		Integer userID = ((User)session.getAttribute("user")).getUserID();
		User user = userDao.getUser(userID);
		models.put("userInfo", user.getBooks());
		return "return/ReturnList";
	}
	
	@RequestMapping("/return/removeBook.html")
	public String removeBook( @RequestParam(required=false) Integer bookID, HttpSession session){
		Book book = bookDao.getBook(bookID);
		User user = userDao.getUser(((User)session.getAttribute("user")).getUserID());
		borrowAndReturnService.removeBook(user, book);
		return "redirect:returnBooks.html";
	}
}
