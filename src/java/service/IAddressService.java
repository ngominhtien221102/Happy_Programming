/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Address;

/**
 *
 * @author minhd
 */
public interface IAddressService {
    List<Address> getList();
    Address getAddressById(int id, List<Address> list);
    String insert(Address u,List<Address> list);

    String update(Address u,List<Address> list);

    String delete(Address u,List<Address> list);
}
