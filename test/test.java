
import dao.*;
import java.util.ArrayList;
import model.*;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author minhd
 */
public class test {
    public static void main(String[] args) {
        SkillDAO r = new SkillDAO();
        AddressDAO a= new AddressDAO();
        ResponseDAO s = new ResponseDAO();
        StatusDAO x = new StatusDAO();
        //x.Insert(1,"pending");
        System.out.println(x.getStatus());
        x.Update(1, "sending");
        System.out.println(r.getStatus());
        x.Load();
        System.out.println(x.getStatus());
        x.Delete(1);
        System.out.println(x.getStatus());
    }
}
