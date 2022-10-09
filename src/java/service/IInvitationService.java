/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Invitation;

/**
 *
 * @author Admin
 */
public interface IInvitationService {

    List<Invitation> getList();

    Invitation getInvitationById(int id, List<Invitation> list);

    String insert(Invitation u, List<Invitation> list);

    String update(Invitation u, List<Invitation> list);

    String delete(int id, List<Invitation> list);

    String cancel(Invitation u, List<Invitation> list);
}
