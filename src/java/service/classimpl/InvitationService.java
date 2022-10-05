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
        // khi insert phai check co bi trung mentorid menteeid skillid ko
        // Neu trung thi check tiep xem cai status cua cai cu, neu no la close/reject (3,4) thi cho send tiep
        // Neu la accepted,processing (1,2) thi ko cho send
        int count = 0, count1 = 0;
        for (Invitation i : list) {
            if (i.getMenteeID() == u.getMenteeID() && i.getMentorID() == u.getMentorID() && i.getSkillID() == u.getSkillID()) {
                count++;
            }
        }
        for (Invitation i : list) {
            if (i.getMenteeID() == u.getMenteeID() && i.getMentorID() == u.getMentorID() && i.getSkillID() == u.getSkillID()) {
                count1++;
                if (count == count1) {
                    if (i.getStatusID() == 3 || i.getStatusID() == 4) {
                        Invitation newInv = InvitationDAO.insert(u);
                        list.add(newInv);
                        return "OK";
                    }else{
                        if(i.getStatusID()== 1 ) return "Invitation has been sent and accepted";
                        else return "The invitation has been sent and is being processed";
                    }
                }
            }
        }
        Invitation newInv = InvitationDAO.insert(u);
        list.add(newInv);
        return "OK";
    }

    @Override
    public String update(Invitation u, List<Invitation> list) {
        // Chi dc update khi status la processing (2) 
        if (u.getStatusID() == 2) {
            InvitationDAO.update(u);
            Invitation invitation = getInvitationById(u.getID(), list);
            invitation.setSkillID(u.getSkillID());
            invitation.setTitle(u.getTitle());
            invitation.setDeadlineDate(u.getDeadlineDate());
            invitation.setStatusID(u.getStatusID());
            invitation.setContent(u.getContent());
            return "OK";
        } else {
            return "Invitation has been expired to update";
        }
    }

    @Override
    public String delete(int id, List<Invitation> list) {
        InvitationDAO.delete(id);
        list.remove(getInvitationById(id, list));
        return "OK";
    }

    @Override
    public List<Invitation> getList() {
        return InvitationDAO.getInvitation();
    }

}
