package com.common;

import org.hibernate.cfg.Configuration;

import org.hibernate.tool.hbm2ddl.SchemaExport;

public class CreatTables 
{
	public static void main(String[] args)
	{
		Configuration cfg=new Configuration().configure();
		SchemaExport export=new SchemaExport(cfg);
		export.create(true, true);
	}
}
