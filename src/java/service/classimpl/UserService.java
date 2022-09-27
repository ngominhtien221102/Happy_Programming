/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.UserDAO;
import java.util.List;
import model.User;
import service.IUserService;

/**
 *
 * @author Lenovo
 */
public class UserService implements IUserService {

    UserDAO userDAO = new UserDAO();

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
    public String delete(User u, List<User> list) {
        userDAO.delete(u.getID());
        User us = getUserById(u.getID(), list);
        list.remove(us);
        return "Delete successful!";
    }

}
