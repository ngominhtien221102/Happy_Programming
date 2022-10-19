/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;
import service.IInvitationService;
import service.classimpl.InvitationService;

/**
 *
 * @author ASUS
 */
public class Notification {

    List<NotificationItem> items;

    public List<NotificationItem> getItems() {
        return items;
    }

    public Notification(String txt) {
        items = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String s[] = txt.split("/");
                for (String i : s) {
                    String[] n = i.split(":");
                    int ID = Integer.parseInt(n[0]);
                    String type = n[1];
                    int menteeID = Integer.parseInt(n[2]);
                    String createAt = n[3];
                    NotificationItem t = new NotificationItem(ID, type, menteeID, createAt);
                    items.add(t);
                }
            }
        } catch (NumberFormatException e) {

        }
    }
    public static void main(String[] args) {
          String txt = 3+":"+"invite"+":"+1+":"+"2022-10-20";
          Notification n = new Notification(txt);
          for (NotificationItem item : n.getItems()) {
              System.out.println(item.getID());
              System.out.println(item.getCreateAt());
              System.out.println(item.getType());
              System.out.println(item.getMenteeID());

        }
    }
}
