/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.SkillDAO;
import java.util.HashMap;
import java.util.List;
import model.Skill;
import service.ISkillService;

/**
 *
 * @author ADMIN
 */
public class SkillService implements ISkillService {

    private SkillDAO skillDAO;

    public SkillService() {
        skillDAO = new SkillDAO();
    }

    @Override
    public List<Skill> getList() {
        return skillDAO.getSkillList();
    }

    @Override
    public HashMap<Integer, String> getHash() {
        return skillDAO.getSkillHash();
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
        for (Skill skill : list) {
            if (skill.getName().toLowerCase().equals(u.getName().toLowerCase())) {
                return "Skill Existed";
            }
        }
        Skill skill = skillDAO.insert(u);
        list.add(skill);
        return "OK";
    }

    @Override
    public String update(Skill u, List<Skill> list) {
        for (Skill skill : list) {
            if (skill.getName().toLowerCase().equals(u.getName().toLowerCase())) {
                return "Skill Existed";
            }
        }
        skillDAO.update(u);
        Skill skill = getSkillById(u.getID(), list);
        skill.setName(u.getName());
        return "OK";

    }

    @Override
    public String delete(int id, List<Skill> list) {
        skillDAO.delete(id);
        list.remove(getSkillById(id, list));

        return "OK";

    }

}
