
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
public class ChefOrders implements OrderListInterface {
    String type;
    //int id;
    ResultSet rs;
    PreparedStatement pst=null;

    public ChefOrders() {

        this.type = "chef";
        //this.id = StaticDataKeeper.customer_id;
        

    }

    @Override
    public ResultSet getOrders() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        //select o.order_id as 'Order ID', o.table_id as Table_Number,  o.ostatus as Order_Status, concat(fname,' ',lname) as Customer_Name, o.total_payable as Total_Payable from customer c, orders o where c.cid = o.cid and o.ostatus = 'Processing' and c.cid = '"+StaticDataKeeper.customer_id+"' "
        
        try {String sql = null;
        Connection mycon=MySql.ConnectDB();
        //    sql="select o.order_id as 'Order ID', o.table_id as Table_Number,  o.ostatus as Order_Status, concat(fname,' ',lname) as Customer_Name, o.total_payable as Total_Payable from customer c, orders o where c.cid = o.cid and o.ostatus = 'Processing' ";           
        
        pst=mycon.prepareStatement(sql);
        rs=pst.executeQuery();
                }
catch(SQLException | HeadlessException e){
JOptionPane.showMessageDialog(null, e);
}
        return rs;
    }

    @Override
    public void setPersonType(String type) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.type = type;
    }
/*
    @Override
    public void setPersonID(int id) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.id = id;
    }
*/
    
}

/*
public class OrderCustomer extends javax.swing.JFrame {
Connection mycon=null;
PreparedStatement pst=null;
ResultSet rs=null;
String add=null;

    public OrderCustomer() throws SQLException {
        initComponents();
        mycon=MySql.ConnectDB();
        Orders_table();
        System.out.print(add);
    }
public void open_table(){
      try{
String sql="select ol.order_id as 'Order Id', m.mname as 'Menu Name', m.mtype as 'Menu Type', m.price as 'Price', ol.Quantity as 'Quantity', m.price*ol.Quantity as 'Total Price' from order_list ol, menu m,orders as o where ol.order_id=o.order_id and m.menu_id = ol.menu_id and ol.order_id ='"+add+"' ";
pst=mycon.prepareStatement(sql);
rs=pst.executeQuery();
detail_table.setModel(DbUtils.resultSetToTableModel(rs));
}
*/