/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.PostDAO;
import java.util.ArrayList;
import java.util.List;
import model.Post;
import service.IPostService;

/**
 *
 * @author Lenovo
 */
public class PostService implements IPostService {
    
    PostDAO postDao = new PostDAO();
    
    @Override
    public List<Post> getList() {
        return postDao.getPostList();
    }
    
    @Override
    public Post getPostById(int id, List<Post> list) {
        for (Post post : list) {
            if (post.getID() == id) {
                return post;
            }
        }
        return null;
    }
    
    @Override
    public String insert(Post p, List<Post> list) {
        Post post = postDao.insert(p);
        list.add(post);
        String id;
        id = post.getID() + "";
        return "OK" + " " + id;
    }
    
    @Override
    public String update(Post p, List<Post> list) {
        postDao.update(p);
        Post post = getPostById(p.getID(), list);
        post.setTitle(p.getTitle());
        post.setContent(p.getContent());
        return "Update successful!";
    }
    
    @Override
    public String delete(int id, List<Post> list) {
        postDao.delete(id);
        list.remove(getPostById(id, list));
        return "Delete successful!";
    }

    @Override
    public List<Post> searchList(String search) {
       List<Post> listPost = new ArrayList<>();
        for (Post post : getList()) {
            if(post.getTitle().toLowerCase().contains(search.trim().toLowerCase()))
            {
                listPost.add(post);
            }
        }
        return listPost;
    }

    @Override
    public List<Post> sortTitle() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
