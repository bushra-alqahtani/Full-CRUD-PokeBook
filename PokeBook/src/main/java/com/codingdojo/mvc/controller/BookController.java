package com.codingdojo.mvc.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.services.BookService;

@Controller

public class BookController {
	//dependency injection 
	@Autowired
	BookService bookService;
	

	
	//create the book
	@RequestMapping("/books/new")
    public String newBook(@ModelAttribute("book") Book book) {
        return "pokebookall.jsp";
    }
    @RequestMapping(value="/books/new", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("book") Book book, BindingResult result) {  // for Error checking i use @valid 
        if (result.hasErrors()) {
           return "pokebookall.jsp";
        } else {
            bookService.createBook(book);
            return "redirect:/books/all";
        }
    }
    
//	rendering information of the book in separate page 
	@RequestMapping("/books/all")
	public String allBooks(Model model) {
		List<Book> allbooks=bookService.getAllBooks();
		model.addAttribute("allbooks", allbooks);
		return "pokebookall.jsp";
	}
	
	
	//	rendering information in separate page 
	@RequestMapping("/books/{id}")
	public String index(Model model,@PathVariable("id") Long id) {
		Book book=bookService.findBook(id);
		model.addAttribute("book", book);
		return "index.jsp";
	}
	
	
	//edit
	@RequestMapping("/books/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model) {
        Book book = bookService.findBook(id);
        model.addAttribute("book", book);
        return "edit.jsp";
    }
    //updating
    @RequestMapping(value="/books/{id}/edit", method=RequestMethod.PUT)
    public String update(@PathVariable("id") Long id,@Valid @ModelAttribute("book") Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "/books/edit.jsp";
        } else {
            bookService.updateBook(id, book);
            return "redirect:/books/all";
        }
    }
     //delete
    
    @RequestMapping(value="/books/{id}/delete")
    public String destroy(@PathVariable("id") Long id) {
        bookService.deleteBook(id);
        return "redirect:/books/all";
    }
    
    
    

	
	
	
    
		    
	

}
