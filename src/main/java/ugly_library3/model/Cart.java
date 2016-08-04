package ugly_library3.model;

import java.util.ArrayList;

public class Cart {
	private ArrayList<Book> books;
	
	public Cart(){
		books = new ArrayList<Book>();
	}

	public ArrayList<Book> getBooks() {
		return books;
	}

	public void setBooks(ArrayList<Book> books) {
		this.books = books;
	}
	
}