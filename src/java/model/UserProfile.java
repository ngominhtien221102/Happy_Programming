/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Lenovo
 */
import java.time.LocalDate;

/**
 *
 * @author Lenovo
 */
public class UserProfile {
    private int userID;
    private String firstName;
    private String lastName;
    private String Avatar;
    private String Email;
    private LocalDate Dob;
    private int addressID;
    private boolean Gender;
    private LocalDate createAt;

    public UserProfile() {
    }
    //Tieu tien ty
    public UserProfile(int userID, String firstName, String lastName, String Avatar, String Email, LocalDate Dob, int addressID, boolean Gender, LocalDate createAt) {
        this.userID = userID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.Avatar = Avatar;
        this.Email = Email;
        this.Dob = Dob;
        this.addressID = addressID;
        this.Gender = Gender;
        this.createAt = createAt;
    }

    public int getUserID() {
        return userID;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getAvatar() {
        return Avatar;
    }

    public String getEmail() {
        return Email;
    }

    public LocalDate getDob() {
        return Dob;
    }

    public int getAddressID() {
        return addressID;
    }

    public boolean isGender() {
        return Gender;
    }

    public LocalDate getCreateAt() {
        return createAt;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setAvatar(String Avatar) {
        this.Avatar = Avatar;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setDob(LocalDate Dob) {
        this.Dob = Dob;
    }

    public void setAddressID(int addressID) {
        this.addressID = addressID;
    }

    public void setGender(boolean Gender) {
        this.Gender = Gender;
    }

    public void setCreateAt(LocalDate createAt) {
        this.createAt = createAt;
    }
    
    

    @Override
    public String toString() {
        return "userProfile{" + "userID=" + userID
                + ", firstName=" + firstName
                + ", lastName=" + lastName
                + ", Avatar=" + Avatar
                + ", Email=" + Email
                + ", Dob=" + Dob.toString()
                + ", addressID=" + addressID
                + ", Gender=" + Gender
                + ", createAt=" + createAt.toString() + '}';
    }
    
    
    
}