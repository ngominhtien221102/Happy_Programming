/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Response;

/**
 *
 * @author Admin
 */
public interface IResponseService {
List<Response> getList();
    Response getResponseById(int id, List<Response> list);

    String insert(Response u, List<Response> list);

    String update(Response u, List<Response> list);

    String delete(int id, List<Response> list);
}
