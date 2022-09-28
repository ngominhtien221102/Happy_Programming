/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Status;

/**
 *
 * @author minhd
 */
public interface IStatusService {
    List<Status> getList();
    Status getStatusById(int id, List<Status> list);
    String insert(Status u,List<Status> list);

    String update(Status u,List<Status> list);

    String delete(Status u,List<Status> list);
}
