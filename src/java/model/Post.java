/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Lenovo
 */
public class Post {

    private int ID;
    private String Title;
    private String Content;

    public Post() {
    }

    public Post(int ID, String Title, String Content) {
        this.ID = ID;
        this.Title = Title;
        this.Content = Content;
    }

    public int getID() {
        return ID;
    }

    public String getTitle() {
        return Title;
    }

    public String getContent() {
        return Content;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    

    @Override
    public String toString() {
        return "Post{" + "ID=" + ID + ", Title=" + Title + ", Content=" + Content + '}';
    }

}
