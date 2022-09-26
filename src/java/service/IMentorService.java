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

    MentorCV geCVById(int id, List<MentorCV> list);

    String insert(MentorCV u);

    String update(MentorCV u);

    String delete(MentorCV u);
}
