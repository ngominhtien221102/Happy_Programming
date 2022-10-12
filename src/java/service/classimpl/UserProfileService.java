/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.UserProfileDAO;
import java.util.ArrayList;
import java.util.List;
import model.User;
import model.UserProfile;
import service.IUserProfileService;

/**
 *
 * @author Lenovo
 */
public class UserProfileService implements IUserProfileService {

    UserProfileDAO userProfileDAO = new UserProfileDAO();

    @Override
    public UserProfile getUserProfileById(int id, List<UserProfile> list) {
        for (UserProfile u : list) {
            if (u.getID() == id) {
                return u;
            }
        }
        return null;
    }

    @Override
    public String insert(UserProfile u, List<UserProfile> list) {
        userProfileDAO.insert(u);
        list.add(u);
        return "Insert sucessful!";
    }

    @Override
    public String update(UserProfile u, List<UserProfile> list) {
        userProfileDAO.update(u);
        UserProfile uS = getUserProfileById(u.getID(), list);
        uS.setFirstName(u.getFirstName());
        uS.setLastName(u.getLastName());
        uS.setAvatar(u.getAvatar());
        uS.setEmail(u.getEmail());
        uS.setDob(u.getDob());
        uS.setAddressID(u.getAddressID());
        uS.setGender(u.isGender());
        return "Update successful!";
    }

    @Override
    public String delete(UserProfile u, List<UserProfile> list) {
        userProfileDAO.delete(u.getID());
        list.remove(u);
        return "Delete successful!";

    }

    @Override
    public List<UserProfile> getList() {
        return userProfileDAO.getUsProList();
    }

    @Override
    public List<UserProfile> search(String name) {
        List<UserProfile> uList = new ArrayList<>();
        for (UserProfile u : getList()) {
            if(u.getFirstName().contains(name) || u.getLastName().contains(name))
            {
                uList.add(u);
            }
        }
        return uList;
    }


 
}
