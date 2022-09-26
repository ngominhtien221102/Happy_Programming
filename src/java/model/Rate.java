/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Rate {
    private int Rate_ID;
    private int Mentor_ID;
    private int Mentee_ID;
    private int Skill_ID;
    private int Rate;

    public Rate() {
    }

    public Rate(int Rate_ID, int Mentor_ID, int Mentee_ID, int Skill_ID, int Rate) {
        this.Rate_ID = Rate_ID;
        this.Mentor_ID = Mentor_ID;
        this.Mentee_ID = Mentee_ID;
        this.Skill_ID = Skill_ID;
        this.Rate = Rate;
    }

    public int getRate_ID() {
        return Rate_ID;
    }

    public void setRate_ID(int Rate_ID) {
        this.Rate_ID = Rate_ID;
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

    public int getRate() {
        return Rate;
    }

    public void setRate(int Rate) {
        this.Rate = Rate;
    }

    
}
