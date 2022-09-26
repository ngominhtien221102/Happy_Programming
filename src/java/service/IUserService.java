/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;


/**
 *
 * @author Admin
 */
public interface IUserService {
    User getUserById(int id, List<User> list);
    boolean insert(User u);
    void update(User u);
    boolean delete(User u);
}
