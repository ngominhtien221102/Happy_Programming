/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.InvitationDAO;
import java.time.LocalDate;
import java.time.ZoneId;
import model.Invitation;
import service.IInvitationService;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class InvitationService implements IInvitationService {

    InvitationDAO InvitationDAO = new InvitationDAO();
    List<Integer> totalPerMonth = new ArrayList<>();
    List<Integer> totalProcessingPerMonth = new ArrayList<>();
    List<Integer> totalCancelPerMonth = new ArrayList<>();
    List<Integer> totalRejectPerMonth = new ArrayList<>();
    List<Integer> totalAcceptPerMonth = new ArrayList<>();
    List<Integer> totalClosedPerMonth = new ArrayList<>();

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
        for (int i = list.size() - 1; i >= 0; i--) {
            if (list.get(i).getMenteeID() == u.getMenteeID() && list.get(i).getMentorID() == u.getMentorID() && list.get(i).getSkillID() == u.getSkillID()) {
                if (list.get(i).getStatusID() == 3 || list.get(i).getStatusID() == 4) {
                    break;
                } else {
                    if (list.get(i).getStatusID() == 1) {
                        return "Invitation has been sent and accepted";
                    } else {
                        return "The invitation has been sent and is being processed";
                    }
                }
            }
        }
        Invitation newInv = InvitationDAO.insert(u);
        list.add(newInv);
        String id;
        id = newInv.getID()+"";
        return "OK"+" "+id;
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
            return "You can only update while the invitation is processing";
        }
    }
    
    @Override
    public String cancel(Invitation u, List<Invitation> list) {
        if (u.getStatusID() == 2) {
            Invitation invitation = getInvitationById(u.getID(), list);
            invitation.setStatusID(3);
            InvitationDAO.update(invitation);
            return "OK";
        } else {
            return "You can only cancel while the invitation is processing";
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

    @Override

    public int countInv(int staId, List<Invitation> list) {
        int count = 0;
        for (Invitation invitation : list) {
            if (invitation.getStatusID() == staId) {
                count++;
            }
        }
        return count;
    }

    @Override
    public List<Invitation> sortList(List<Invitation> list) {
        Collections.sort(list, new Comparator<Invitation>() {
            @Override
            public int compare(Invitation inv1, Invitation inv2) {
                return inv1.getTitle().compareTo(inv2.getTitle());
            }
        });
        return list;
    }

    @Override
    public List<Invitation> searchInv(String keyword, List<Invitation> invList) {
        List<Invitation> list = new ArrayList<>();
        for (Invitation invitation : invList) {
            if (invitation.getTitle().trim().contains(keyword.trim())) {
                list.add(invitation);
            }
        }
        return list;
    }

    @Override
    public List<Integer> getListIDSkill() {
        List<Invitation> invList = getList();
        List<Integer> idSkillList = new ArrayList<>();
        for (Invitation i : invList){
            if (!idSkillList.contains(i.getSkillID()) && i.getStatusID()!= 3)
                idSkillList.add(i.getSkillID());
        }
        return idSkillList;
    }

    @Override
    public void totalInvPerMonth(List<Invitation> list) {
        Date date = new Date();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int month = localDate.getMonthValue();
        int year = localDate.getYear();
        
        for (int i=1; i<=month; i++){
            getInvPerMonth(i, year, list);
        }
    }

    private void getInvPerMonth(int month, int year, List<Invitation> list) {
        int total=0, total1 = 0, total2 = 0, total3 = 0, total4 = 0, total5 = 0;
        for (Invitation i : list){
            String[] s = i.getCreatedAt().split("-");
            int y = Integer.parseInt(s[0]);
            int m = Integer.parseInt(s[1]);
            if (y==year && m == month){
                total++;
                switch (i.getStatusID()) {
                    case 1:
                        total1++;
                        break;
                    case 2:
                        total2++;
                        break;
                    case 3:
                        total3++;
                        break;
                    case 4:
                        total4++;
                        break;
                    case 5:
                        total5++;
                        break;
                }
            }
        }
        totalPerMonth.add(total);
        totalAcceptPerMonth.add(total1);
        totalProcessingPerMonth.add(total2);
        totalCancelPerMonth.add(total3);
        totalRejectPerMonth.add(total4);
        totalClosedPerMonth.add(total5);
    }

    public List<Integer> getTotalPerMonth() {
        return totalPerMonth;
    }

    public List<Integer> getTotalProcessingPerMonth() {
        return totalProcessingPerMonth;
    }

    public List<Integer> getTotalCancelPerMonth() {
        return totalCancelPerMonth;
    }

    public List<Integer> getTotalRejectPerMonth() {
        return totalRejectPerMonth;
    }

    public List<Integer> getTotalAcceptPerMonth() {
        return totalAcceptPerMonth;
    }

    public List<Integer> getTotalClosedPerMonth() {
        return totalClosedPerMonth;
    }
    
    

    
}
