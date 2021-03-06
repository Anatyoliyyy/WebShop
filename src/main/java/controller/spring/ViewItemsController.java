package controller.spring;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import factory.CustomerFactory;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.CustomerDAO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;


public class ViewItemsController extends AbstractController {

    CustomerFactory customerDAO=CustomerFactory.getCustomerInstance();
    CustomerDAO factoryCustomer = customerDAO.getCustomerFactory();
    public static final String ID = "idCustomer";

    public ViewItemsController() {
    }

    @Override
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        ModelAndView result;
        try {
            Integer id = Integer.parseInt(request.getParameter(ID));
            List items = factoryCustomer.getItemsByIdCustomer(id);

            ModelAndView mv = new ModelAndView("viewItems","items",items);
            result = mv;

        } catch (Exception e) {
            result = new ModelAndView("error");
        }
        return result;
    }
}
