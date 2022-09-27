/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author minhd
 */
public class Response {
    private int id;
    private int requestId;
    private String content;
    private Date createAt;

    public Response(int id, int request_id, String content, Date create_at) {
        this.id = id;
        this.requestId = request_id;
        this.content = content;
        this.createAt = create_at;
    }

    public Response() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRequest_id() {
        return requestId;
    }

    public void setRequest_id(int request_id) {
        this.requestId = request_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreate_at() {
        return createAt;
    }

    public void setCreate_at(Date create_at) {
        this.createAt = create_at;
    }
    
}
