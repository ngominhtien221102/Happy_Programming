/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.CommentDAO;
import java.util.List;
import model.Comment;
import service.ICommentService;

/**
 *
 * @author Admin
 */
public class CommentService implements ICommentService {

    CommentDAO cmtDAO = new CommentDAO();

    @Override
    public Comment getCommentById(int id, List<Comment> list) {
        for (Comment comment : list) {
            if (comment.getID() == id) {
                return comment;
            }
        }
        return null;
    }

    @Override
    public String insert(Comment u, List<Comment> list) {
        Comment cmt = cmtDAO.insert(u);
        list.add(cmt);
        return "OK";
    }

    @Override
    public String update(Comment u, List<Comment> list) {
        cmtDAO.update(u);
        Comment cmt = getCommentById(u.getID(), list);
        cmt.setMentorID(u.getMentorID());
        cmt.setMenteeID(u.getMenteeID());
        cmt.setSkillID(u.getSkillID());
        cmt.setCreatedAt(u.getCreatedAt());
        cmt.setContent(u.getContent());
        return "OK";

    }

    @Override
    public String delete(Comment u, List<Comment> list) {
        cmtDAO.del(u.getID());
        Comment cmt = getCommentById(u.getID(), list);
        list.remove(cmt);
        return "OK";

    }

}
