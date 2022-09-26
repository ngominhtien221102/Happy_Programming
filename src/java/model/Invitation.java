/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;



/**
 *
 * @author ASUS
 */
public class Invitation {
    private int id;
    private int mentorId;
    private int menteeId;
    private int skillId;
    private int status;
    private String title;
    private String deadlineDate;
    private String content;

    public Invitation() {
    }

    public Invitation(int id, int mentorId, int menteeId, int skillId, int status, String title, String deadlineDate, String content) {
        this.id = id;
        this.mentorId = mentorId;
        this.menteeId = menteeId;
        this.skillId = skillId;
        this.status = status;
        this.title = title;
        this.deadlineDate = deadlineDate;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMentorId() {
        return mentorId;
    }

    public void setMentorId(int mentorId) {
        this.mentorId = mentorId;
    }

    public int getMenteeId() {
        return menteeId;
    }

    public void setMenteeId(int menteeId) {
        this.menteeId = menteeId;
    }

    public int getSkillId() {
        return skillId;
    }

    public void setSkillId(int skillId) {
        this.skillId = skillId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Invitation{" + "id=" + id + ", mentorId=" + mentorId + ", menteeId=" + menteeId + ", skillId=" + skillId + ", status=" + status + ", title=" + title + ", deadlineDate=" + deadlineDate + ", content=" + content + '}';
    }

    

    
    
}
