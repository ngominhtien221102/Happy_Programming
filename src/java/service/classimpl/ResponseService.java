/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.ResponseDAO;
import java.util.List;
import model.Response;
import service.IResponseService;

/**
 *
 * @author Lenovo
 */
public class ResponseService implements IResponseService {
    
    ResponseDAO responseDAO = new ResponseDAO();
    @Override
    public List<Response> getList() {
        return responseDAO.getResponselst();
    }

    @Override
    public Response getResponseById(int id, List<Response> list) {
        for (Response response : list) {
            if(response.getID() == id )
            {
                return response;
            }
        }
        return null;
    }

    @Override
    public String insert(Response u, List<Response> list) {
        Response res = responseDAO.insert(u);
        list.add(res);
        String id;
        id = res.getID()+"";
        return "OK"+" "+id;
    }

    @Override
    public String update(Response u, List<Response> list) {
        
        responseDAO.update(u);
        Response r = getResponseById(u.getID(), list);
        r.setContent(u.getContent());
        return "Update successful!";
    }


    @Override
    public String delete(int id, List<Response> list) {
        responseDAO.delete(id);
        list.remove(getResponseById(id, list));
        return "Delete successful!";
    }


    
}
