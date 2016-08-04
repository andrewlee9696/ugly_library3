package ugly_library3.model.dao;

import java.util.List;

import ugly_library3.model.Book;
import ugly_library3.model.User;

public interface BookDao {

    Book getBook( Integer id );

    List<Book> getBooks();

	Book saveBook(Book book);

}
