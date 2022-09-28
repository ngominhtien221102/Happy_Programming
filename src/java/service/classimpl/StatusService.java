/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.StatusDAO;
import java.util.List;
import model.Status;
import service.IStatusService;

/**
 *
 * @author ASUS
 */
public class StatusService implements IStatusService {

    StatusDAO StatusDAO = new StatusDAO();

    @Override
    public List<Status> getList() {
        return StatusDAO.getStatuslst();
    }

    @Override
    public Status getStatusById(int id, List<Status> list) {
        for (Status status : list) {
            if (status.getID() == id) {
                return status;
            }
        }
        return null;
    }

    @Override
    public String insert(Status u, List<Status> list) {
        Status s = StatusDAO.insert(u);
        list.add(s);
        return "OK";
    }

    @Override
    public String update(Status u, List<Status> list) {
        StatusDAO.update(u);
        Status status = getStatusById(u.getID(), list);
        status.setID(u.getID());
        status.setName(u.getName());
        return "OK";
    }

    @Override
    public String delete(Status u, List<Status> list) {
        StatusDAO.delete(u.getID());
       list.remove(u);
       return "OK";
    }

}
