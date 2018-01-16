package com.sapient.service;

import java.util.*;

import javax.ws.rs.GET;
import javax.ws.rs.*;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;


@Path("/")
public class HelloService {

	@Path("helloplain")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayHello(@QueryParam("name") String str) {
		return ("Harman welcomes " + str);
	}
	
	@Path("hellohtml")
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String sayHello1(@QueryParam("name") String str) {
		return ("<h2>Harman welcomes " + str + "</h2>");
	}
	
	@Path("hellojson/{pname}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Map sayHello2(@PathParam("pname") String str){
		
		Map<String, Object> map =  new HashMap<>();
		map.put("ename", str);
		map.put("msg", "harman welcomes" + str);
		return map;
	}

}
