package service.cart;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.List;


public interface Cart {

    public List<String> getAllNameItem();

    public List<Integer> getAllPriceItem();

    public void addItemToCart(String name, Integer Price);

    public void deleteItemFromCart(String name, Integer price);

    public String getLastItemFromCart();

    public void setLastItemFromCart(String lastItemFromCart);

    public Integer getSummaryPrice();

    public void setSummaryPrice(Integer summaryPrice);

    public Integer getCurrentId(String item);

    public void deleteAll();
}
