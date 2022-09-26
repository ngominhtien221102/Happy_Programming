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
public class Comment {
    private int Comment_ID;
    private int Mentor_ID;
    private int Mentee_ID;
    private int Skill_ID;
    private Date Created_at;
    private String Content;

    public Comment() {
    }

    public Comment(int Comment_ID, int Mentor_ID, int Mentee_ID, int Skill_ID, Date Created_at, String Content) {
        this.Comment_ID = Comment_ID;
        this.Mentor_ID = Mentor_ID;
        this.Mentee_ID = Mentee_ID;
        this.Skill_ID = Skill_ID;
        this.Created_at = Created_at;
        this.Content = Content;
    }

    public int getComment_ID() {
        return Comment_ID;
    }

    public void setComment_ID(int Comment_ID) {
        this.Comment_ID = Comment_ID;
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

    public int getSkill_ID() {
        return Skill_ID;
    }

    public void setSkill_ID(int Skill_ID) {
        this.Skill_ID = Skill_ID;
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
