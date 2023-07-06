package com.action;
import com.bean.BookTicket;
import com.bean.Ticket;
import com.dao.BookTicketDao;
import com.dao.impl.BookTicketDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class BookTicket1Action extends ActionSupport {
	private BookTicket bookticket= new BookTicket();
	private BookTicketDao b=new BookTicketDaoImpl();
	
	public BookTicket getBookticket() {
		return bookticket;
	}

	public void setBookticket(BookTicket bookticket) {
		this.bookticket = bookticket;
	}

	public String bookAction() throws Exception {
		this.b.save(this.bookticket);
		return SUCCESS;
	}
}
