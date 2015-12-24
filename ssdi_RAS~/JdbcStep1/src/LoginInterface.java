/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author nbhir
 */
public interface LoginInterface {
    public void setUsername(String uname);
    public void setPwd(String pwd);

    /**
     *
     * @return
     */
    public boolean checkLogin();
}
