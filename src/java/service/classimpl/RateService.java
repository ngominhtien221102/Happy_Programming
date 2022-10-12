/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.RateDAO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import model.Rate;
import model.User;
import service.IRateService;
import service.IUserService;

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
    public List<User> getMentorsSuggest(List<Integer> listIDSkill) {
        List<User> mentorsSuggest = new ArrayList<>();
        
        HashMap<Integer, Float> avgRateHm = getHmAvgRate();
        List<Float> rateList = new ArrayList<>(avgRateHm.values());
        Collections.sort(rateList);
        Collections.reverse(rateList);
        int count = 0;
        for (Float rate : rateList){
            if (count==9) break;
            
        }
        return null;
        
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
    
    @Override
    public float getRateByMentorID(int id)
    {
        HashMap<Integer, Float> avgRate = getHmAvgRate();
        if(avgRate.get(id) == null)
        {
            return 0;
        }
        return avgRate.get(id);
    }
    


}
