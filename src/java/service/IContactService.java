/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Contact;

/**
 *
 * @author minhd
 */
public interface IContactService {
    List<Contact> getList();
    Contact getConactById(int id, List<Contact> list);

    String insert(Contact con, List<Contact> list);

    String delete(int id, List<Contact> list);
}
