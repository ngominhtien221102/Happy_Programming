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

    String insert(Comment u);

    String update(Comment u);

    String delete(Comment u);
}