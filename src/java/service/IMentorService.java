/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.MentorCV;

/**
 *
 * @author Admin
 */
public interface IMentorService {

    MentorCV getCVById(int id, List<MentorCV> list);

    String insert(MentorCV u, List<MentorCV> list);

    String update(MentorCV u, List<MentorCV> list);

    String delete(MentorCV u, List<MentorCV> list);
}
