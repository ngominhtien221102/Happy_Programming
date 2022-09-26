/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.*;

/**
 *
 * @author Admin
 */
public interface IUserService {
    User getUserById(int id, List<User> list);
    String insert(User u);
    String update(User u);
    String delete(User u);
}
