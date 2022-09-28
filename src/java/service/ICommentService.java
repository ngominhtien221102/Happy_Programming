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
    List<Comment> getList();
    Comment getCommentById(int id, List<Comment> list);

    String insert(Comment u, List<Comment> list);

    String update(Comment u, List<Comment> list);

    String delete(int id, List<Comment> list);
}
