package com.codingdojo.mvc.services;


import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.repositories.BookRepository;
@Service
public class BookService {
    // adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    
    
    
    // returns all the books
   public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }
  
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    
    
    //get book by id 
    public Optional<Book> getBookById(Long id) {
    	return bookRepository.findById(id);
    }
    
   // retrieves a book 
    public Book findBook(Long id) {
       Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
           return optionalBook.get();
        } else {
            return null;
        }
    }
    
   
    	    
    // update book
    public Book updateBook(Long id,Book b) {
    	Optional<Book> bookObtional=bookRepository.findById(id);
    	if(bookObtional.isPresent()) {
    		Book book =bookObtional.get();
    		book.setExpense(b.getExpense());
    		book.setVendor(b.getVendor());
    		book.setAmount(b.getAmount());
    		book.setDeiscription(b.getDeiscription());
    		bookRepository.save(book);
    	}
    	return null; 
    }

   
     //delete
    
    public boolean deleteBook(Long id) {
    	Book removeBook = findBook(id);
    	if(removeBook==null) {
    		return false;
    		}
    	bookRepository.delete(removeBook);
    	return true;
    }


	
 }
   
