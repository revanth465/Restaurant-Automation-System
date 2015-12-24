/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.ResultSet;

/**
 *
 * @author nbhirud
 */
public interface OrderListInterface {
 
    /**
     * Implements factory design pattern. Returns 
     * @return
     */
    public ResultSet getOrders();

    /**
     *
     * @param type
     */
    public void setPersonType(String type);
    //public void setPersonID(int id);

}
