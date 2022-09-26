package model;

/**
 *
 * @author Lenovo
 */
public class User {
    private int userID;
    private int roleID;
    private String accountName;
    private String passWord;
    private boolean status;

    public User() {
    }

    public User(int userID, int roleID, String accountName, String passWord, boolean status) {
        this.userID = userID;
        this.roleID = roleID;
        this.accountName = accountName;
        this.passWord = passWord;
        this.status = status;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getUserID() {
        return userID;
    }

    public int getRoleID() {
        return roleID;
    }

    public String getAccountName() {
        return accountName;
    }

    public String getPassWord() {
        return passWord;
    }

    public boolean isStatus() {
        return status;
    }
    
    

    @Override
    public String toString() {
        return "user{" + "userID=" + userID + ", roleID=" + roleID + ", accountName=" + accountName + ", passWord=" + passWord + ", status=" + status + '}';
    }
    
    
    
}
