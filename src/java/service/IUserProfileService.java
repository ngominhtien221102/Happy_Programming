/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.User;

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
    
   
}
