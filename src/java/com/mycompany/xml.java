/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany;
import java.io.File;
import java.io.IOException;
import java.util.List;
import org.jdom.*;
import org.jdom.input.SAXBuilder;
/**
 *
 * @author BerkosDesk
 */
public class xml {
    
    
    
    
    static String xml(String onoma){
        
        
         SAXBuilder builder = new SAXBuilder();
	//  File xmlFile = new File("C:/Users/BerkosDesk/Documents/NetBeansProjects/TestEL/Basket.xml");
           //File xmlFile = new File("/webapps/Basket.xml");
         
         // File xmlFile = new File("/http://texwww.inf.uth.gr:8080/~adberkak/Basket.xml");
        //File xmlFile = new File("Basket.xml");
          Element  node1=null,node2=null,node3=null;
          try {
                
		Document document = (Document) builder.build("http://texwww.inf.uth.gr:8080/~adberkak/Basket.xml");
		Element rootNode = document.getRootElement();
		List list = rootNode.getChildren("ITEM");
 
                node1 = (Element) list.get(0);
                node2 = (Element) list.get(1);
                node3 = (Element) list.get(2);
		// Price=node2.getChildText("Price");
                
                for (int i = 0; i < list.size(); i++) {
 
		   Element node = (Element) list.get(i);
 
		 //  System.out.println("Product : " + node.getChildText("name"));
		//   System.out.println("Cafe: " + node.getChildText("Price"));

 
		}
 
	  } catch (IOException io) {
		System.out.println(io.getMessage());
	  } catch (JDOMException jdomex) {
		System.out.println(jdomex.getMessage());
	  }
         
          if(onoma.equals("Sugar"))
                return node2.getChildText("Price");
          else if (onoma.equals("Cafe"))
                return node1.getChildText("Price");
          else if(onoma.equals("Water"))
              return node3.getChildText("Price");
          else return "kati pige strava";
    }
    
    
}
