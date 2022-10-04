/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.MentorCVDAO;
import java.util.List;
import model.MentorCV;
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

}
