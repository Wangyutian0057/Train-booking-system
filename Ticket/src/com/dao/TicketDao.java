package com.dao;

import java.util.List;
import com.bean.Ticket;
public interface TicketDao {

	public void save (Ticket t);
	public void delete (Ticket t);
	public void update (Ticket t);
	public Ticket showTicket (Integer id);
	public List getAllTicketList ();
	public Ticket findById (Integer tid);
	public List<Ticket> findFuzzily (String ticketInfo);
	public void deleteById (Integer tid);
	public void updateById (Integer tid);
	public int countTicket();
	public int countPage(int pageCount);
	public List splitPageShowTicketList(int pageSize, int showPage);
	public List getNextPageList(int pageSize, int showPage);
	public List getBeforePageList(int pageSize, int showPage);
	public List getFirstPageList(int pageSize, int showPage);
	public List getLastPageList(int pageSize, int showPage);
	public List<Ticket> selectTicketByStartEnd(String start,String end);
}
