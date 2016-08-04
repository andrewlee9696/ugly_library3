package ugly_library3.web.controller;

import java.util.ArrayList;
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
public class BorrowController {
	
	@Autowired
	private BookDao bookDao;
	
	@Autowired
	BorrowAndReturnService borrowAndReturnService;
	
	@RequestMapping(value = "/borrow/list.html")
	//public String list(ModelMap models){
	public String list(@ModelAttribute("models") ModelMap models){
		List<Book> books = bookDao.getBooks();
		models.put("books", books);
		return "borrow/List";
	}
	
	@RequestMapping("/borrow/AddToCart.html")
	public String addToCart( @RequestParam(required=false) Integer bookID, HttpSession session){
		((Cart)session.getAttribute("cart")).getBooks().add(bookDao.getBook(bookID));
		return "redirect:list.html";
	}
	
	@RequestMapping("/borrow/Checkout.html")
	//public String checkOut();
	public String checkOut(@ModelAttribute("models") ModelMap models, HttpSession session){
		Cart cart = (Cart)session.getAttribute("cart");
		//no above line
		models.put("cartBooks", cart.getBooks());
		//no above line
		return "borrow/CheckOut";
	}
	
	@RequestMapping("/borrow/SubmitCheckout.html")
	public String submitCheckOut(HttpSession session){
		Cart cart = (Cart) session.getAttribute("cart");
		
		List<Book> cartList = cart.getBooks();
		List<Book> bookList = bookDao.getBooks();
		
		for (Book cartBook: cartList){
			for (Book bookBook : bookList){
				if (cartBook.getBookID().equals(bookBook.getBookID()) && bookBook.getRemaining_number() > 0){
					borrowAndReturnService.addBook((User)session.getAttribute("user"), bookBook);
				}
			}
		}
		
		cart.setBooks(new ArrayList<Book>());
		session.setAttribute("cart", cart );
		
		return "redirect:/user/main.html";
	}
}
