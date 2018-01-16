package com.training;

import javax.jcr.LoginException;
import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.core.TransientRepository;

public class WriteContent {
	public static void main(String[] args) throws LoginException, RepositoryException {

		Repository repo = new TransientRepository();
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node root = sess.getRootNode();
		Node courses = root.addNode("courses");
		Node java = courses.addNode("java");
		Node jee = courses.addNode("jee");
		java.setProperty("what is java", "Java is oo programming language");
		java.setProperty("Features of Java", "Function Programming, Streams, Robust, Platform Independent");
		java.setProperty("Data Types", "Int, Byte, Short, Long, Double, String, Boolean");
		
		jee.setProperty("Lifecycle of servlet",
				"init() and destroy() fires only once ans ervice() fires multiple times");
		jee.setProperty("Implicit objects",
				"application, request, response, out, exception, session, page, pageContext, config");

		sess.save();
		System.out.println("Content Published");
		sess.logout();
	}
}