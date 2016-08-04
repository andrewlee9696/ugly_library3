package ugly_library3.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name = "publisher")
public class Publisher {
	
    @Id
    @GeneratedValue
    private Integer publisherID;

    private String publisher;
    
    @OneToMany(mappedBy = "publisher")
    private Set<Book> books;
    
    public Publisher(){ }

	public Integer getPublisherID() {
		return publisherID;
	}

	public void setPublisherID(Integer publisherID) {
		this.publisherID = publisherID;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Set<Book> getBooks() {
		return books;
	}

	public void setBooks(Set<Book> books) {
		this.books = books;
	}
}
