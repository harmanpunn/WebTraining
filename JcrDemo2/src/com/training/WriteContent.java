package com.training;

import javax.jcr.Node;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.commons.JcrUtils;

public class WriteContent {

	public static void main(String[] args) throws RepositoryException {
		// TODO Auto-generated method stub

		Repository repo = JcrUtils.getRepository("http://localhost:8083/server");
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node root = sess.getRootNode();
		Node film = root.addNode("film");
		Node hwood = film.addNode("hollywood");
		Node bwood = film.addNode("bollywood");
		Node jumanji = hwood.addNode("jumanji");
		jumanji.setProperty("review by janit", "good not bad");
		jumanji.setProperty("review by herman", "excellent watched it 3 times");
		
		Node n1921 = bwood.addNode("1921");
		n1921.setProperty("review by raju", "no horror noring movie , bad");
		n1921.setProperty("review by manish", "comedy mixed with horror watched it 5 times");
		
		sess.save();
		sess.logout();
		System.out.println("content published");
	}

}
