/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Request;

/**
 *
 * @author Admin
 */
public interface IRequestService {

    Request getRequestById(int id, List<Request> list);

    boolean insert(Request u);

    void update(Request u);

    boolean delete(Request u);
}
