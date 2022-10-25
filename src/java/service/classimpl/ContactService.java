/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.ContactDAO;
import java.util.List;
import model.Contact;
import service.IContactService;

/**
 *
 * @author minhd
 */
public class ContactService implements IContactService {
    ContactDAO conDAO = new ContactDAO();

    @Override
    public List<Contact> getList() {
        return conDAO.getcList();
    }

    @Override
    public Contact getConactById(int id, List<Contact> list) {
        for (Contact con : list) {
            if (con.getContactID() == id) {
                return con;
            }
        }
        return null;
    }

    @Override
    public String insert(Contact con, List<Contact> list) {
        Contact c = conDAO.insert(con);
        list.add(c);
        return "OK";
    }

    @Override
    public String delete(int id, List<Contact> list) {
        conDAO.delete(id);
        list.remove(getConactById(id, list));
        return "OK";
    }

}
