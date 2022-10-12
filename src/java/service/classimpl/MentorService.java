/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.MentorCVDAO;
import java.util.ArrayList;
import java.util.List;
import model.Invitation;
import model.MentorCV;
import model.Skill;
import model.UserProfile;
import service.IMentorService;

/**
 *
 * @author ASUS
 */
public class MentorService implements IMentorService {

    MentorCVDAO mentorCVDAO = new MentorCVDAO();

    @Override
    public MentorCV getCVById(int id, List<MentorCV> list) {
        for (MentorCV mentorCV : list) {
            if (mentorCV.getID() == id) {
                return mentorCV;
            }
        }
        return null;
    }

    @Override
    public String insert(MentorCV u, List<MentorCV> list) {
        mentorCVDAO.insert(u);
        list.add(u);
        return "OK";
    }

    @Override
    public String update(MentorCV u, List<MentorCV> list) {
        mentorCVDAO.update(u);
        MentorCV m = getCVById(u.getID(), list);
        m.setProfession(u.getProfession());
        m.setIntroduction(u.getIntroduction());
        m.setServiceDescription(u.getServiceDescription());
        m.setAchivements(u.getAchivements());
        m.setSkillList(u.getSkillList());
        return "OK";
    }

    @Override
    public String delete(int id, List<MentorCV> list) {
        mentorCVDAO.delete(id);
        list.remove(getCVById(id, list));
        return "OK";
    }

    @Override
    public List<MentorCV> getListCV() {
        return mentorCVDAO.getMentorCVList();
    }

    @Override
    public List<MentorCV> searchMentor(String keyword, List<MentorCV> listMen, List<UserProfile> listUp) {
        keyword = keyword.toLowerCase().trim();
        List<MentorCV> list = new ArrayList<>();
        for (UserProfile u : listUp) {
            MentorCV m = getCVById(u.getID(), listMen);
            if (m != null) {
                if (u.getFirstName().toLowerCase().contains(keyword) || u.getLastName().toLowerCase().contains(keyword)) {
                    list.add(m);
                }
            }
        }
        for (MentorCV m : listMen) {
            for (Skill s : m.getSkillList()) {
                if(s.getName().toLowerCase().contains(keyword.toLowerCase().trim())){
                    if(list.contains(m)==false) list.add(m);
                    break;
                }
            }
        }
        return list;
    }

   
}
