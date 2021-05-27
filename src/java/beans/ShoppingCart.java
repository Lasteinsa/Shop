package beans;

import java.lang.String;
import java.lang.Integer;
import java.lang.Float;
import java.util.Hashtable;
import java.util.Enumeration;

public class ShoppingCart {
    
    protected Hashtable items=new Hashtable();
    
    public void addItem(String itemId, String desc, float price, int quantity)
    {
        String[] item= {itemId, desc, Float.toString(price), Integer.toString(quantity)};
        
        if(items.containsKey(itemId))
        {
            String[] tmpItem = (String[])items.get(itemId);
            int tmpQuant = Integer.parseInt(tmpItem[3]);
            quantity += tmpQuant;
            tmpItem[3] = Integer.toString(quantity);
        }
        else
        {
            items.put(itemId, item);
        }
    }
    
    public void removeItem(String itemId)
    {
        if(items.containsKey(itemId))
        {
            items.remove(itemId);
        }
    }
    
    public void updateQuantity(String itemId, int quantity)
    {
        if(items.containsKey(itemId))
        {
            String[] tmpItem=(String[])items.get(itemId);
            tmpItem[3]=Integer.toString(quantity);
        }
    }
    
    public Enumeration getEnumeration()
    {
        return items.elements();
    }
    
    public float getCost()
    {
        Enumeration e  = items.elements();
        String[] tmpItem;
        float totalCost=0.00f;
        while(e.hasMoreElements())
        {
            tmpItem=(String[])e.nextElement();
            totalCost += (Integer.parseInt(tmpItem[3])*Float.parseFloat(tmpItem[2]));
     
        }
        return totalCost;
    }
    
    public int getNumOfItems()
    {
        Enumeration e = items.elements();
        String[] tmpItem;
        int numOfItems=0;
        while(e.hasMoreElements())
        {
            tmpItem = (String[])e.nextElement();
            numOfItems += (Integer.parseInt(tmpItem[3]));
        }
        return numOfItems;
    }
}