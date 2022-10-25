/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Post;

/**
 *
 * @author Lenovo
 */
public interface IPostService {

    List<Post> getList();

    Post getPostById(int id, List<Post> list);

    String insert(Post p, List<Post> list);

    String update(Post p, List<Post> list);

    String delete(int id, List<Post> list);

    List<Post> searchList(String search);

    List<Post> sortTitle();

}
