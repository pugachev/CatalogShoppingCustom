package action.catalog;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import dao.CatalogDAO;
import model.Product;


public class SearchProductAction extends Action {
    
    public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
        
    	DynaActionForm dForm = (DynaActionForm)form;
    	String keyword = (String)dForm.get("keyword");
    	
        CatalogDAO dao = new CatalogDAO();	
    	
        List<Product> list = dao.getProductList(keyword);
        
        //1)キーワードにあてはまる商品一覧をセッションに格納
        request.getSession().setAttribute("products",list);
        request.setAttribute("offset","0");
        
    	return mapping.findForward("list");
    }
}
