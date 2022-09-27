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
List<Request> getList();
    Request getRequestById(int id, List<Request> list);

    String insert(Request u, List<Request> list);

    String update(Request u, List<Request> list);

    String delete(Request u, List<Request> list);
}
