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
    private int ID;
    private String firstName;
    private String lastName;
    private String avatar;
    private String email;
    private LocalDate dob;
    private int addressID;
    private boolean gender;
    private LocalDate createAt;

    public UserProfile() {
    }

    public UserProfile(int userID, String firstName, String lastName, String Avatar, String Email, LocalDate Dob, int addressID, boolean Gender, LocalDate createAt) {
        this.ID = userID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.avatar = Avatar;
        this.email = Email;
        this.dob = Dob;
        this.addressID = addressID;
        this.gender = Gender;
        this.createAt = createAt;
    }

    public int getUserID() {
        return ID;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getEmail() {
        return email;
    }

    public LocalDate getDob() {
        return dob;
    }

    public int getAddressID() {
        return addressID;
    }

    public boolean isGender() {
        return gender;
    }

    public LocalDate getCreateAt() {
        return createAt;
    }

    public void setUserID(int userID) {
        this.ID = userID;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setAvatar(String Avatar) {
        this.avatar = Avatar;
    }

    public void setEmail(String Email) {
        this.email = Email;
    }

    public void setDob(LocalDate Dob) {
        this.dob = Dob;
    }

    public void setAddressID(int addressID) {
        this.addressID = addressID;
    }

    public void setGender(boolean Gender) {
        this.gender = Gender;
    }

    public void setCreateAt(LocalDate createAt) {
        this.createAt = createAt;
    }
    
    

    @Override
    public String toString() {
        return "userProfile{" + "userID=" + ID
                + ", firstName=" + firstName
                + ", lastName=" + lastName
                + ", Avatar=" + avatar
                + ", Email=" + email
                + ", Dob=" + dob.toString()
                + ", addressID=" + addressID
                + ", Gender=" + gender
                + ", createAt=" + createAt.toString() + '}';
    }
    
    
    
}
