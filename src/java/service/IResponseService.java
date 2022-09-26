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

    Response getResponseById(int id, List<Response> list);

    boolean insert(Response u);

    void update(Response u);

    boolean delete(Response u);
}
