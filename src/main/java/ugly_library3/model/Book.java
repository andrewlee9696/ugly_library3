package ugly_library3.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.FetchMode;
import org.hibernate.annotations.Fetch;

@Entity
@Table(name = "book")
public class Book {

    @Id
    @GeneratedValue
    private Integer bookID;

    private String title;

    private int remaining_number;

    private String type;
    
    @ManyToOne(targetEntity=Publisher.class,cascade=CascadeType.ALL)
    @JoinColumn(name="publisherID",updatable=false)
    private Publisher publisher;
    
    @ManyToOne(targetEntity=Author.class,cascade=CascadeType.ALL)
    @JoinColumn(name="authorID",updatable=false)
    private Author author;
    
    @ManyToOne(targetEntity=Catagory.class,cascade=CascadeType.ALL)
    @JoinColumn(name="catagoryID",updatable=false)
    private Catagory catagory;
    
    @ManyToMany(fetch = FetchType.EAGER, mappedBy= "books")
    private Set<User> users = new HashSet<User>();

    
    public Book(){ }

	public Integer getBookID() {
		return bookID;
	}

	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getRemaining_number() {
		return remaining_number;
	}

	public void setRemaining_number(int remaining_number) {
		this.remaining_number = remaining_number;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}

	public Catagory getCatagory() {
		return catagory;
	}

	public void setCatagory(Catagory catagory) {
		this.catagory = catagory;
	}

}
