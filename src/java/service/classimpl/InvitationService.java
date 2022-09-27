/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.InvitationDAO;
import java.util.List;
import model.Invitation;
import service.IInvitationService;

/**
 *
 * @author ASUS
 */
public class InvitationService implements IInvitationService {

    InvitationDAO InvitationDAO = new InvitationDAO();

    @Override
    public Invitation getInvitationById(int id, List<Invitation> list) {
        for (Invitation invitation : list) {
            if (invitation.getID() == id) {
                return invitation;
            }
        }
        return null;
    }

    @Override
    public String insert(Invitation u, List<Invitation> list) {
            Invitation i = InvitationDAO.insert(u);
            list.add(i);
            return "OK";
    }

    @Override
    public String update(Invitation u, List<Invitation> list) {
            InvitationDAO.update(u);
            Invitation invitation = getInvitationById(u.getID(), list);
            invitation.setSkillID(u.getSkillID());
            invitation.setTitle(u.getTitle());
            invitation.setDeadlineDate(u.getDeadlineDate());
            invitation.setContent(u.getContent());
            return "OK";
    }

@Override
    public String delete(Invitation u, List<Invitation> list) {
       InvitationDAO.delete(u.getID());
       Invitation invitation = getInvitationById(u.getID(), list);
       list.remove(invitation);
       return "OK";
    }

    
    
}
