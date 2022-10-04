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

    @Override
    public boolean equals(Object obj);
    List<String> getListProvince();
    List<String> getListDistTrict(String province );
    List<String> getListWard(String Province, String District);
    int getIDAddress(String Province, String District, String Ward, List<Address> list);

}
