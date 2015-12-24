
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author nbhir
 */
public class StaffLogin implements LoginInterface{
    String uname;
    String pwd;
    public void StaffLogin(String uname, String pwd) {
        this.pwd=pwd;
        this.uname = uname;
    }

    @Override
    public void setUsername(String uname) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.uname = uname;
    }

    @Override
    public void setPwd(String pwd) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.pwd = pwd;
    }

    @Override
    public boolean checkLogin() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
            ResultSet rs = null;
    try {
        String sql = null;
        
        Connection mycon=MySql.ConnectDB();
        //if ("customer".equals(type)) {
        sql="select email,pwd from staff where email=? and pwd=?";
        PreparedStatement pst=mycon.prepareStatement(sql);
          pst.setString(1,uname);
          pst.setString(2,pwd);
        //}
        //else if (("admin".equals(type))||("administrator".equals(type))||("chef".equals(type))) {
        //    sql="select o.order_id as 'Order ID', o.table_id as Table_Number,  o.ostatus as Order_Status, concat(fname,' ',lname) as Customer_Name, o.total_payable as Total_Payable from customer c, orders o where c.cid = o.cid and o.ostatus = 'Processing' ";           
        //}
        
        pst=mycon.prepareStatement(sql);
        rs=pst.executeQuery();

            if(!rs.next())
            {
                return true;
            }
            
    
                    }
catch(SQLException | HeadlessException e){
JOptionPane.showMessageDialog(null, e);
}
    return false;
    }
    
}
