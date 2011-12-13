/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany;

/**
 *
 * @author BerkosDesk
 */
public class MyBean {
    // Initialize with random values
   String prop1 = "" + (int)(Integer.MAX_VALUE*Math.random());
    String prop2 = ""+Math.random();

    String Value = "geia sou";
       
     public String getValue() {
        return Value;
    }
    public void setValue(String Value) {
        this.Value = Value;
    }
    
     String Price = "TIMI";  
     public String getPrice() {
        return Price;
    }
    public void setPrice(String Price) {
        this.Price = Price;
    }
    
    public String getProp1() {
        return prop1;
    }
    public void setProp1(String prop1) {
        this.prop1 = prop1;
    }

    public String getProp2() {
        return prop2;
    }
    public void setProp2(String prop2) {
        this.prop2 = prop2;
    }
}
