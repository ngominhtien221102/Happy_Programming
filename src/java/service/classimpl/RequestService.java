/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.RequestDAO;
import java.util.List;
import model.Request;
import service.IRequestService;

/**
 *
 * @author ADMIN
 */
public class RequestService implements IRequestService {

    RequestDAO reqDAO = new RequestDAO();

    @Override
    public List<Request> getList() {
        return reqDAO.getReqList();
    }
    
    @Override
    public Request getRequestById(int id, List<Request> list) {
        for (Request req : list) {
            if (req.getID() == id) {
                return req;
            }
        }
        return null;
    }

    @Override
    public String insert(Request u, List<Request> list) {

        reqDAO.insert(u);
        list.add(u);
        return "OK";

    }

    @Override
    public String update(Request u, List<Request> list) {

        reqDAO.update(u);
        Request req = getRequestById(u.getID(), list);
        req.setMentorID(u.getMentorID());
        req.setMenteeID(u.getMenteeID());
        req.setContent(u.getContent());
        req.setCreatedAt(u.getCreatedAt());
        return "OK";
    }

    @Override
    public String delete(Request u, List<Request> list) {

        reqDAO.del(u.getID());
        list.remove(u);
        return "OK";

    }

    

}
