package ugly_library3.service;

import ugly_library3.model.Book;
import ugly_library3.model.User;

public interface BorrowAndReturnService {
	
	public void addBook(User user, Book book);
	
	public void removeBook(User user, Book book);
}
