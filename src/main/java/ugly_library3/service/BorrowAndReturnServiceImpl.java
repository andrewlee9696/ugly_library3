package ugly_library3.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ugly_library3.model.Book;
import ugly_library3.model.User;
import ugly_library3.model.dao.BookDao;
import ugly_library3.model.dao.UserDao;

@Service
@Transactional(rollbackFor = Exception.class)
public class BorrowAndReturnServiceImpl implements BorrowAndReturnService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private BookDao bookDao;
	
	@Override
	public void addBook(User user, Book book) {
		book.setRemaining_number(book.getRemaining_number() - 1);
		bookDao.saveBook(book);
		user.getBooks().add(book);
		userDao.saveUser(user);
	}

	@Override
	public void removeBook(User user, Book book) {
		user.getBooks().remove(book);
		book.setRemaining_number(book.getRemaining_number() + 1);
		userDao.saveUser(user);
		bookDao.saveBook(book);
	}
	
}
