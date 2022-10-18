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
    public HashMap<Integer, String> getHm() {
        return StatusDAO.getStatusHm();
    }

    @Override
    public Status getStatusById(int id, HashMap<Integer, String> Hm) {
        for (Map.Entry<Integer, String> entry : Hm.entrySet()) {
            if (id == entry.getKey()) {
                return new Status(entry.getKey(), entry.getValue());
            }
        }
        return null;
    }

    @Override
    public String insert(Status u, HashMap<Integer, String> Hm) {
        Status s = StatusDAO.insert(u);
        Hm.put(s.getID(), s.getName());
        return "OK";
    }

    @Override
    public String update(Status u, HashMap<Integer, String> Hm) {
        StatusDAO.update(u);
        Status status = getStatusById(u.getID(), Hm);
        status.setID(u.getID());
        status.setName(u.getName());
        return "OK";
    }

    @Override
    public String delete(int id, HashMap<Integer, String> Hm) {
        StatusDAO.delete(id);
        Hm.remove(id);

        return "OK";
    }

}
