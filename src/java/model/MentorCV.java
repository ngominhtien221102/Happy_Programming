/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class MentorCV {
    private int ID;
    private String profession;
    private String introduction;
    private String serviceDescription;
    private String achivements;
    private List<Skill> skillList;

    public MentorCV() {
    }

    public MentorCV(int id, String profession, String introduction, String serviceDescription, String achivements, List<Skill> skillList) {
        this.ID = id;
        this.profession = profession;
        this.introduction = introduction;
        this.serviceDescription = serviceDescription;
        this.achivements = achivements;
        this.skillList = skillList;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public String getAchivements() {
        return achivements;
    }

    public void setAchivements(String achivements) {
        this.achivements = achivements;
    }

    public List<Skill> getSkillList() {
        return skillList;
    }

    public void setSkillList(List<Skill> skillList) {
        this.skillList = skillList;
    }

    @Override
    public String toString() {
        return "MentorCV{" + "id=" + ID + ", profession=" + profession + ", introduction=" + introduction + ", serviceDescription=" + serviceDescription + ", achivements=" + achivements + ", skillList=" + skillList + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + this.ID;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final MentorCV other = (MentorCV) obj;
        return this.ID == other.ID;
    }

    

    
    
}
