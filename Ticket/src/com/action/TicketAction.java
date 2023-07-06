package com.action;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.bean.Ticket;
import com.dao.TicketDao;
import com.dao.impl.TicketDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class TicketAction extends ActionSupport {

	private Ticket ticket;
	private TicketDao t= new TicketDaoImpl();
	
	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public String addTicketAction() throws Exception {
		this.t.save(this.ticket);
		this.addActionError("添加车次信息成功！");
		
		int pageSize = 6;
		int ticketSum = t.countTicket();
		int pageSum = t.countPage(pageSize);
		int showPage = pageSum;
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Ticket> allTicketList=this.t.getLastPageList(pageSize, showPage);
		request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSize",pageSize );
		request.setAttribute("pageSum",pageSum );
		request.setAttribute("showPage",showPage );
		return SUCCESS;
	}
	
	public String deleteTicketAction() throws Exception {	
		
		int pageSize =6;
		int ticketSum;
		int pageSum;
		int showPage = 1;
		HttpServletRequest request = ServletActionContext.getRequest();
		
		int tid = Integer.parseInt(request.getParameter("tid"));
		this.t.deleteById(tid);
		this.addActionError("删除车次信息成功!");
		
		List<Ticket> allTicketList = this.t.getFirstPageList(pageSize, showPage);
     	ticketSum = t.countTicket();
		pageSum = t.countPage(pageSize);
		
        request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSum",pageSum );
		request.setAttribute("pageSize",pageSize );
		request.setAttribute("showPage",showPage );		
		return SUCCESS;
	}
	
public String updateTicketAction() throws Exception {
	    int pageSize = 6;				
		int ticketSum;
		int pageSum;
		int showPage = 1;
			
		HttpServletRequest request = ServletActionContext.getRequest();
		
		int tid = this.getTicket().getId();
		Ticket ticket=this.t.findById(tid);
		ticket.setId(this.getTicket().getId());
		ticket.setStart(this.getTicket().getStart());
		ticket.setEnd(this.getTicket().getEnd());
		ticket.setPrice(this.getTicket().getPrice());
		ticket.setModel(this.getTicket().getModel());
		ticket.setTicketFactory(this.getTicket().getTicketFactory());
		ticket.setTicketnum(this.getTicket().getTicketnum());
		ticket.setFlytime(this.getTicket().getFlytime());
		this.t.update(ticket);
		this.addActionError("修改车次信息成功!");	
		List<Ticket> allTicketList = this.t.getFirstPageList(pageSize, showPage);
		ticketSum = t.countTicket();
		pageSum = t.countPage(pageSize);
		
		request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSum",pageSum );
	    request.setAttribute("pageSize",pageSize );
		request.setAttribute("showPage",showPage );
				return SUCCESS;
	}

	public String updateTicketFormAction() throws Exception {
		Integer id = Integer.parseInt(ServletActionContext.getRequest().getParameter("tid"));
		Ticket ticket = this.t.findById(id);
		this.setTicket(ticket);
		return SUCCESS;
	}
	
	public String sticketAction() throws Exception {
		int tid = this.getTicket().getId();
		Ticket ticket = this.t.findById(tid);
		this.setTicket(ticket);
    	return SUCCESS;
	}
	public String sticket1Action() throws Exception {
		int pageSize = 6;
		int ticketSum;
		int pageSum = 0;
		int showPage = 1;
		HttpServletRequest request = ServletActionContext.getRequest();
	
		String ticketInfo = this.getTicket().getStart();
		List<Ticket> ticketList = this.t.findFuzzily(ticketInfo);
		System.out.println(ticketInfo);
		
		ticketSum = ticketList.size();
		if(ticketSum%pageSize==0)
			pageSum = ticketSum/pageSize;
	else if(ticketSum%pageSize!=0)
			pageSum = ticketSum/pageSize+1;
		
		request.setAttribute("ticketList", ticketList);
		request.setAttribute("ticketSum",ticketSum);
		request.setAttribute("pageSum",pageSum);
		request.setAttribute("pageSize",pageSize);
	request.setAttribute("showPage",showPage);
	
	return SUCCESS;
	}
	
	public String splitPageShowTicketListAction() throws Exception {
		int pageSize = 6;
		int ticketSum = this.t.countTicket();
		int pageSum = this.t.countPage(pageSize);
		int showPage;
			
		HttpServletRequest request = ServletActionContext.getRequest();
		showPage = Integer.parseInt(request.getParameter("showPage"));
		List<Ticket> allTicketList = this.t.splitPageShowTicketList(pageSize, showPage);		
		request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum);
		request.setAttribute("pageSum",pageSum);
		request.setAttribute("pageSize",pageSize);
		request.setAttribute("showPage",showPage);
		
		return SUCCESS;	}
	
	public String showFistPageAction() throws Exception {
		int pageSize = 6;
		int ticketSum = t.countTicket();
		int pageSum = t.countPage(pageSize);
		int showPage = 1;
			
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Ticket> allTicketList = this.t.getFirstPageList(pageSize, showPage);
		
		System.out.println(request.getParameter("userName"));
		request.setAttribute("userName", request.getParameter("userName"));
		request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSum",pageSum );
		request.setAttribute("pageSize",pageSize );
		request.setAttribute("showPage",showPage );
		
		return SUCCESS;
	}
	
	public String showLastPageAction() throws Exception {
		int pageSize = 6;
		int ticketSum = t.countTicket();
		int pageSum = t.countPage(pageSize);
		int showPage = pageSum;
			
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Ticket> allTicketList = this.t.getLastPageList(pageSize, showPage);
	
		request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSum",pageSum );
		request.setAttribute("pageSize",pageSize );
		request.setAttribute("showPage",showPage );
		
		return SUCCESS;
	}
	
	public String showBeforePageAction() throws Exception {
		int pageSize = 6;
		int ticketSum = t.countTicket();
		int pageSum = t.countPage(pageSize);
		int showPage;
			
		HttpServletRequest request = ServletActionContext.getRequest();
		showPage = Integer.parseInt(request.getParameter("showPage"));
		List<Ticket> allTicketList = this.t.getBeforePageList(pageSize, showPage);
		if(showPage>1){
			showPage-=1;
		}
		
		request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSum",pageSum );
		request.setAttribute("pageSize",pageSize );
		request.setAttribute("showPage",showPage );
		
		return SUCCESS;
	}
	
	public String showNextPageAction() throws Exception {
		int pageSize = 6;
		int ticketSum = t.countTicket();
		int pageSum = t.countPage(pageSize);
		int showPage;
			
		HttpServletRequest request = ServletActionContext.getRequest();
		showPage = Integer.parseInt(request.getParameter("showPage"));
		List<Ticket> allTicketList = this.t.getNextPageList(pageSize, showPage);
		if(showPage<pageSum){
			showPage+=1;
		}
		
		request.setAttribute("allTicketList", allTicketList);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSum",pageSum );
		request.setAttribute("pageSize",pageSize );
		request.setAttribute("showPage",showPage );
		
		return SUCCESS;
	}
	
	public String buyAction() throws Exception {
		List<Ticket> ticketList = null;
		
		int pageSize =6;
		int ticketSum;
		int pageSum = 0;
		int showPage = 1;
		int priceSum = 0;
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String[] tids = request.getParameterValues("ids");
		Ticket ticket = null;
		for(String tid:tids){
			ticket = this.t.findById(Integer.parseInt(tid));
			priceSum+=ticket.getPrice();
			ticketList.add(ticket);
		}
		
		ticketSum = ticketList.size();
		if(ticketSum%pageSize==0)
			pageSum = ticketSum/pageSize;
		else if(ticketSum%pageSize!=0)
			pageSum = ticketSum/pageSize+1;
		
		request.setAttribute("selectTicket",ticketList);
		request.setAttribute("priceSum", priceSum);
		request.setAttribute("ticketSum",ticketSum );
		request.setAttribute("pageSum",pageSum );
		request.setAttribute("pageSize",pageSize );
		request.setAttribute("showPage",showPage );
		
		return SUCCESS;
	}
	
	public String otherAction() throws Exception {
		String returnStr = "";
		return returnStr;
	}
	
}
