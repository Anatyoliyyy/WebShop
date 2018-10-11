package factory;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import model.dao.CustomerDAO;
import model.daoImpl.CustomerDAOImpl;


public class CustomerFactory {

    private static CustomerFactory INSTANCE;
    private static CustomerDAO customerFactory;

    public static CustomerFactory getCustomerInstance() {
        if (INSTANCE == null) {
            INSTANCE = new CustomerFactory();
        }
        return INSTANCE;
    }

    private CustomerFactory() {
    }

    public CustomerDAO getCustomerFactory() {

        if (customerFactory == null) {
            customerFactory = new CustomerDAOImpl();
        }
        return customerFactory;
    }
}
