/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class Request {
    private int Request_ID;
    private int Mentor_ID;
    private int Mentee_ID;
    private Date Created_at;
    private String Content;

    public Request() {
    }

    public Request(int Request_ID, int Mentor_ID, int Mentee_ID, Date Created_at, String Content) {
        this.Request_ID = Request_ID;
        this.Mentor_ID = Mentor_ID;
        this.Mentee_ID = Mentee_ID;
        this.Created_at = Created_at;
        this.Content = Content;
    }

    public int getRequest_ID() {
        return Request_ID;
    }

    public void setRequest_ID(int Request_ID) {
        this.Request_ID = Request_ID;
    }

    public int getMentor_ID() {
        return Mentor_ID;
    }

    public void setMentor_ID(int Mentor_ID) {
        this.Mentor_ID = Mentor_ID;
    }

    public int getMentee_ID() {
        return Mentee_ID;
    }

    public void setMentee_ID(int Mentee_ID) {
        this.Mentee_ID = Mentee_ID;
    }

    public Date getCreated_at() {
        return Created_at;
    }

    public void setCreated_at(Date Created_at) {
        this.Created_at = Created_at;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }
     
    
}
