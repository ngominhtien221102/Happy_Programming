/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.MentorCVDAO;
import dal.UserDAO;
import dal.UserProfileDAO;
import java.util.List;
import model.MentorCV;
import model.User;
import model.UserProfile;
import service.IUserService;

/**
 *
 * @author Lenovo
 */
public class UserService implements IUserService {

    UserDAO userDAO = new UserDAO();
    UserProfileDAO userProDAO = new UserProfileDAO();
    UserProfileService userProService = new UserProfileService();
    MentorCVDAO mentorCVDAO = new MentorCVDAO();
    MentorService mentorService = new MentorService();    


    @Override
    public User getUserById(int id, List<User> list) {
        for (User u : list) {
            if (u.getID() == id) {
                return u;
            }
        }
        return null;
    }

    @Override
    public String insert(User u, List<User> list) {
        if(getUserById(u.getID(), list) != null)
        {
            return "Insert not successful!";
        }
        User i = userDAO.insert(u);
            list.add(i);
            return "Insert successful!";
    }

    @Override
    public String update(User u, List<User> list) {
        userDAO.update(u);
        User us = getUserById(u.getID(), list);
        us.setRoleID(u.getRoleID());
        us.setPassWord(u.getPassWord());
        us.setStatus(u.isStatus());
        return "Update successful!";
        
    }

    @Override
    public String delete(User u, List<User> list, List<UserProfile> userProList, List<MentorCV> mentorList) {
        if(u.getRoleID() == 2)
        {
            UserProfile us = userProService.getUserProfileById(u.getID(), userProList);
            userProService.delete(us, userProList);
        }
        if(u.getRoleID() == 3)
        {
            MentorCV mentorCV = mentorService.getCVById(u.getID(), mentorList);
            mentorService.delete(mentorCV.getID(), mentorList);       
        }
        userDAO.delete(u.getID());
        list.remove(u);
        return "Delete successful!";
    }

    @Override
    public User getUserByAccount(String accountName, String Password) {
        
        for (User user : userDAO.getUsList()) {
            if(user.getAccountName().equals(accountName) && user.getPassWord().equals(Password))
            {
                return user;
            }
        }
        return null;
    }

    @Override
    public List<User> getList() {
        return userDAO.getUsList();
    }
}
