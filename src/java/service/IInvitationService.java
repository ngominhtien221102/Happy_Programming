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

    Invitation getInvitationById(int id, List<Invitation> list);

    String insert(Invitation u);

    String update(Invitation u);

    String delete(Invitation u);
}
