/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.RateDAO;
import java.util.ArrayList;
import java.util.List;
import model.Rate;
import service.IRateService;

/**
 *
 * @author ADMIN
 */
public class RateService implements IRateService{

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
    public String insert(Rate u, List<Rate> list) {

        rateDAO.insert(u);
        list.add(u);
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
    public String delete(Rate u, List<Rate> list) {

        rateDAO.del(u.getID());
        Rate rate = getRateById(u.getID(), list);
        list.remove(rate);
        return "OK";
    }

    

}
