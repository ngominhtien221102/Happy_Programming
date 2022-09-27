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
        Skill getSkillById(int id, List<Skill> list);

    boolean insert(Skill u, List<Skill> list);

    void update(Skill u, List<Skill> list);

    boolean delete(Skill u, List<Skill> list);
}
