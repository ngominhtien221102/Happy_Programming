/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.MentorCV;
import model.UserProfile;

/**
 *
 * @author Admin
 */
public interface IMentorService {
    List<MentorCV> getListCV();
    MentorCV getCVById(int id, List<MentorCV> list);

    String insert(MentorCV u, List<MentorCV> list);

    String update(MentorCV u, List<MentorCV> list);

    String delete(int id, List<MentorCV> list);
    List<MentorCV> searchMentor(String n, List<MentorCV> listMen, List<UserProfile> listUp);
}
