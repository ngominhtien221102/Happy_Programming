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
    
    List<Integer> getListIDSkill();

    Invitation getInvitationById(int id, List<Invitation> list);

    String insert(Invitation u, List<Invitation> list);

    String update(Invitation u, List<Invitation> list);

    String delete(int id, List<Invitation> list);

    int countInv(int staId, List<Invitation> list);

    List<Invitation> sortList(List<Invitation> list);
    
    List<Invitation> searchInv (String keyword, List<Invitation> invList);    

    String cancel(Invitation u, List<Invitation> list);
    
    void totalInvPerMonth(List<Invitation> list);
    
    List<Integer> getTotalPerMonth();

    List<Integer> getTotalProcessingPerMonth();

    List<Integer> getTotalCancelPerMonth();

    List<Integer> getTotalRejectPerMonth();

    List<Integer> getTotalAcceptPerMonth();

    List<Integer> getTotalClosedPerMonth();

    List<Invitation> getInvitationByMentorId(int mentorId, List<Invitation> list);
}
