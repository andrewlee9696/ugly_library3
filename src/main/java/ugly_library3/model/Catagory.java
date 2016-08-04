package ugly_library3.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name = "catagory")
public class Catagory {
	
    @Id
    @GeneratedValue
    private Integer catagoryID;

    private String catagory;
    
    @OneToMany(mappedBy = "catagory")
    private Set<Book> books;
    
    public Catagory(){ }

	public Integer getCatagoryID() {
		return catagoryID;
	}

	public void setCatagoryID(Integer catagoryID) {
		this.catagoryID = catagoryID;
	}

	public String getCatagory() {
		return catagory;
	}

	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}

	public Set<Book> getBooks() {
		return books;
	}

	public void setBooks(Set<Book> books) {
		this.books = books;
	}


}
