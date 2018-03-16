package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.mzos.tandt.util.ApplicationConstant;

/**
 * @author Gokul
 *  This class is for cancelling booking
 */
public class DeletePackage implements Controller{ // NOPMD by Lenovo on 5/3/18 8:40 AM

	/**
	 *  @param req, response
	 *  @return ModelAndView
	 *  This handles request and returns ModelAndView
	 */
	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws SQLException, Exception{
		Connection con = null;
		PreparedStatement stmt = null;
		
		HttpSession session =req.getSession();
		
		
		try {
			Class.forName(ApplicationConstant.JDBC_DRIVER);  
			con=DriverManager.getConnection(ApplicationConstant.JDBC_URL,ApplicationConstant.JDBC_USERNAME,ApplicationConstant.JDBC_PASSWORD);  
			
			
			
			String size=req.getParameter("siz");
			int id=(int) session.getAttribute("pid"+size);

			
			stmt=con.prepareStatement("delete from packagepojo where pid=?");  
			stmt.setInt(1,id);
			int i=stmt.executeUpdate();
			System.out.println(i+"record Deleted");
			
		} catch(SQLException s) {
			s.printStackTrace();
			return new ModelAndView("showpack","msg","Not delete");

		} catch(Exception e) {
			e.printStackTrace();
			return new ModelAndView("showpack","msg","Not delete");

		} finally {
			if (stmt != null ) 	stmt.close();
			if (con != null ) con.close();
		}
		
		ShowPackage sp=new ShowPackage();
		sp.handleRequest(req, res);
		
		return new ModelAndView("showpack","msg","Package delete Successfully..!!");
	}
}
