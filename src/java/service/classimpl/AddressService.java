/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.AddressDAO;
import java.util.List;
import model.Address;
import service.IAddressService;

/**
 *
 * @author ASUS
 */
public class AddressService implements IAddressService {

    AddressDAO AddressDAO = new AddressDAO();

    @Override
    public List<Address> getList() {
        return AddressDAO.getAddresslst();
    }

    @Override
    public Address getAddressById(int id, List<Address> list) {
        for (Address address : list) {
            if (address.getID() == id) {
                return address;
            }
        }
        return null;
    }

    @Override
    public String insert(Address u, List<Address> list) {
        Address a = AddressDAO.insert(u);
        list.add(a);
        return "OK";
    }

    @Override
    public String update(Address u, List<Address> list) {
        AddressDAO.update(u);
        Address invitation = getAddressById(u.getID(), list);
        invitation.setID(u.getID());
        invitation.setTinh(u.getTinh());
        invitation.setHuyen(u.getHuyen());
        invitation.setXa(u.getXa());
        return "OK";
    }


}
