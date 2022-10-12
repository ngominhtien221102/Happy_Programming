/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import java.util.Map;
import model.Rate;
import model.User;

/**
 *
 * @author Admin
 */
public interface IRateService {
    List<Rate> getList();
    
    List<User> getMentorsSuggest(List<Integer> listIDSkill);
    
    Rate getRateById(int id, List<Rate> list);

    String insert(Rate u, List<Rate> list);

    String update(Rate u, List<Rate> list);

    String delete(int id, List<Rate> list);
    
    Map getHmAvgRate();
    float getRateByMentorID(int id);
}
