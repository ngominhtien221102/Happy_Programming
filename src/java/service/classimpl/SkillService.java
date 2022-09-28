/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.SkillDAO;
import java.util.List;
import model.Skill;
import service.ISkillService;

/**
 *
 * @author ADMIN
 */
public class SkillService implements ISkillService {

    SkillDAO skillDAO = new SkillDAO();

    @Override
    public List<Skill> getList() {
        return skillDAO.getRateList();
    }

    @Override
    public Skill getSkillById(int id, List<Skill> list) {
        for (Skill skill : list) {
            if (skill.getID() == id) {
                return skill;
            }
        }
        return null;
    }

    @Override
    public String insert(Skill u, List<Skill> list) {
        Skill s = skillDAO.insert(u);
        list.add(s);
        return "OK";
    }

    @Override
    public String update(Skill u, List<Skill> list) {
        skillDAO.update(u);
        Skill skill = getSkillById(u.getID(), list);
        skill.setName(u.getName());
        return "OK";

    }

    @Override
    public String delete(Skill u, List<Skill> list) {
        skillDAO.delete(u.getID());
        Skill skill = getSkillById(u.getID(), list);
        list.remove(skill);
        return "OK";

    }

}
