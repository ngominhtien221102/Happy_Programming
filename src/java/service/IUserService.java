/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.HashMap;
import model.MentorCV;
import model.User;
import model.UserProfile;

import java.util.List;


/**
 * @author Admin
 */
public interface IUserService {
    List<User> getList();
    
    HashMap<Integer, Integer> getRoleHm (List<User> list);

    User getUserByAccount(String accountName, String PassWord, List<User> list);

    User getUserById(int id, List<User> list);

    String insert(User u, List<User> list);

    String update(User u, List<User> list);

    String delete(int ID, List<User> list, List<UserProfile> list1, List<MentorCV> list2);

    User getUserByAccountName(String accountName, List<User> list);

    UserProfile getUserProfile(String accountName, List<User> userlist, List<UserProfile> profilelist);


}