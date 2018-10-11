package factory;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import service.cart.Cart;
import service.cart.CartImpl;


public class CartShopFactory {

    private static CartShopFactory INSTANCE;
    private static Cart cartFactory;

    public static CartShopFactory getCartShopInstance() {
        if (INSTANCE == null) {
            INSTANCE = new CartShopFactory();
        }
        return INSTANCE;
    }

    private CartShopFactory() {
    }

    public Cart getCartFactory(CartTypes cartType) {

        switch (cartType) {
            case CARTLIST:
                if (cartFactory == null) {
                    cartFactory = new CartImpl();

                }
                break;
        }

        return cartFactory;

    }
}