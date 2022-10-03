/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.HashMap;
import model.Status;

/**
 *
 * @author minhd
 */
public interface IStatusService {
    HashMap<Integer,String> getHash();
    Status getStatusById(int id, HashMap<Integer,String> Hash);
    String insert(Status u,HashMap<Integer,String> Hash);

    String update(Status u,HashMap<Integer,String> Hash);

    String delete(int id,HashMap<Integer,String> Hash);
}
