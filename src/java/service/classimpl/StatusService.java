/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.StatusDAO;
import java.util.HashMap;
import java.util.Map;
import model.Status;
import service.IStatusService;

/**
 *
 * @author ASUS
 */
public class StatusService implements IStatusService {

    StatusDAO StatusDAO = new StatusDAO();

    @Override
    public HashMap<Integer, String> getHash() {
        return StatusDAO.getStatusHash();
    }

    @Override
    public Status getStatusById(int id, HashMap<Integer, String> Hash) {
        for (Map.Entry<Integer, String> entry : Hash.entrySet()) {
            if (id == entry.getKey()) {
                Status status = new Status(entry.getKey(), entry.getValue());
                return status;
            }
        }
        return null;
    }

    @Override
    public String insert(Status u, HashMap<Integer, String> Hash) {
        Status s = StatusDAO.insert(u);
        Hash.put(s.getID(), s.getName());
        return "OK";
    }

    @Override
    public String update(Status u, HashMap<Integer, String> Hash) {
        StatusDAO.update(u);
        Status status = getStatusById(u.getID(), Hash);
        status.setID(u.getID());
        status.setName(u.getName());
        return "OK";
    }

    @Override
    public String delete(int id, HashMap<Integer, String> Hash) {
        StatusDAO.delete(id);
        Hash.remove(id);

        return "OK";
    }

}
