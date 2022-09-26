/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Comment;

/**
 *
 * @author Admin
 */
public interface ICommentService {

    Comment getCommentById(int id, List<Comment> list);

    boolean insert(Comment u);

    void update(Comment u);

    boolean delete(Comment u);
}
