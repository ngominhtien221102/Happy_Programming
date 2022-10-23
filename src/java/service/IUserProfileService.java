/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.HashMap;
import java.util.List;

import model.UserProfile;





/**
 *
 * @author Admin
 */
public interface IUserProfileService {
    List<UserProfile> getList();
    UserProfile getUserProfileById(int id, List<UserProfile> list);
    String insert(UserProfile u, List<UserProfile> list);
    String update(UserProfile u, List<UserProfile> list);
    String delete(UserProfile u, List<UserProfile> list);
    List<UserProfile> search(String name, List<UserProfile> uList);
    List<UserProfile> sortName(List<UserProfile> uList);
    List<UserProfile> sortRate(List<UserProfile> uList);
    
    List<Integer> getMonthlyUser(int roleID, List<UserProfile> uList,HashMap<Integer, Integer> roleHm);

   
}
