/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Skill;

/**
 *
 * @author Admin
 */
public interface ISkillService {

    List<Skill> getList();

    Skill getSkillById(int id, List<Skill> list);

    String insert(Skill u, List<Skill> list);

    String update(Skill u, List<Skill> list);

    String delete(int id, List<Skill> list);
}
