package model;

/**
 *
 * @author Lenovo
 */
public class User {
    private int ID;
    private int roleID;
    private String accountName;
    private String password;
    private boolean status;

    public User() {
    }

    public User(int userID, int roleID, String accountName, String passWord, boolean status) {
        this.ID = userID;
        this.roleID = roleID;
        this.accountName = accountName;
        this.password = passWord;
        this.status = status;
    }

    public void setID(int userID) {
        this.ID = userID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public void setPassWord(String passWord) {
        this.password = passWord;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getID() {
        return ID;
    }

    public int getRoleID() {
        return roleID;
    }

    public String getAccountName() {
        return accountName;
    }

    public String getPassWord() {
        return password;
    }

    public boolean isStatus() {
        return status;
    }
    
    

    @Override
    public String toString() {
        return "user{" + "userID=" + ID + ", roleID=" + roleID + ", accountName=" + accountName + ", passWord=" + password + ", status=" + status + '}';
    }
    
    
    
}
