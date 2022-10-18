/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.UserProfile;

/**
 *
 * @author Admin
 */
public class Utility {

    public Utility() {
    }

    public String getString(String message) {
        return "";
    }

    public int getInt(String message) {
        return 0;
    }

    public LocalDate getDate(String message) {
        return null;
    }

    public boolean checkPassword(String password) {//Minimum eight characters, at least one uppercase letter, one lowercase letter and one number
        Pattern p = Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$");
        Matcher m = p.matcher(password);
        return m.matches();
    }

    public int countWord(String sentence) {
        String trim = sentence.trim();
        if (trim.isEmpty()) {
            return 0;
        }
        return trim.split("\\s+").length;
    }

    public boolean checkEmailDup(String Email, List<UserProfile> list) {
        for (UserProfile u : list) {
            if (u.getEmail().equals(Email)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkDateNow(String dateInString) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate now = LocalDate.now();
        Date today = sdf.parse(dtf.format(now));
        Date date = sdf.parse(dateInString);
        return date.after(today) || date.equals(today);
    }
    public static void main(String[] args) throws ParseException {
        Utility u = new Utility();
         System.out.println(u.checkDateNow("10/03/2022"));
    }

}
