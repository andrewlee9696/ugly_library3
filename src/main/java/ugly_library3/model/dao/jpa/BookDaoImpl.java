package ugly_library3.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ugly_library3.model.Book;
import ugly_library3.model.User;
import ugly_library3.model.dao.BookDao;
import ugly_library3.model.dao.UserDao;


@Repository
public class BookDaoImpl implements BookDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Book getBook( Integer id )
    {
        return entityManager.find( Book.class, id );
    }

    @Override
    public List<Book> getBooks()
    {
        return entityManager.createQuery( "from Book", Book.class )
            .getResultList();
    }
    
	@Override
	@Transactional
	public Book saveBook(Book book) {
		return entityManager.merge(book);
	}
}
