/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.RateDAO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import model.MentorCV;
import model.Rate;
import model.Skill;
import model.User;
import service.IRateService;

/**
 *
 * @author ADMIN
 */
public class RateService implements IRateService {

    RateDAO rateDAO = new RateDAO();

    @Override
    public List<Rate> getList() {
        return rateDAO.getRateList();
    }

    @Override
    public Rate getRateById(int id, List<Rate> list) {
        for (Rate rate : list) {
            if (rate.getID() == id) {
                return rate;
            }
        }
        return null;
    }

    @Override
    public HashMap getHmAvgRate() {
        return rateDAO.getHmAvgRate();
    }
    
    @Override
    public List<Integer> getMentorsSuggest(List<Integer> listIDSkill, List<MentorCV> CVList) {
        List<Integer> idMentorsSuggest = new ArrayList<>();
        
        HashMap<Integer, Float> avgRateHm = getHmAvgRate();
        
        for (MentorCV cv : CVList){
            if (!avgRateHm.containsKey(cv.getID())){
                avgRateHm.put(cv.getID(), 0f);
            }
        }
        
        for (MentorCV cv : CVList){
            boolean skillExist = false;
            for (Skill skill : cv.getSkillList()){
                if (listIDSkill.contains(skill.getID())){
                    skillExist = true;
                    break;
                }
            }
            if (skillExist){
                if (idMentorsSuggest.size()==0) idMentorsSuggest.add(cv.getID());
                else
                    for (int i=0; i<idMentorsSuggest.size(); i++){
                        float rate1 = avgRateHm.get(idMentorsSuggest.get(i));
                        float rate2 = avgRateHm.get(cv.getID());
                        if (rate1<rate2){
                            idMentorsSuggest.add(i, cv.getID());
                            break;
                        }
                    }
                if (idMentorsSuggest.size()>9){
                    idMentorsSuggest.remove(idMentorsSuggest.get(idMentorsSuggest.size()-1));
                }
            }
        }
        return idMentorsSuggest;
        
    }
    
    

    @Override
    public String insert(Rate u, List<Rate> list) {
        Rate rate = rateDAO.insert(u);
        list.add(rate);
        return "OK";

    }

    @Override
    public String update(Rate u, List<Rate> list) {

        rateDAO.update(u);
        Rate rate = getRateById(u.getID(), list);
        rate.setMenteeID(u.getMenteeID());
        rate.setMentorID(u.getMentorID());
        rate.setSkillID(u.getSkillID());
        rate.setRate(u.getRate());
        return "OK";

    }

    @Override
    public String delete(int id, List<Rate> list) {
        rateDAO.delete(id);
        list.remove(getRateById(id, list));
        return "OK";
    }

}
