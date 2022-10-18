/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.RateDAO;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import model.MentorCV;
import model.Rate;
import model.Skill;
import service.IRateService;

/**
 *
 * @author ADMIN
 */
public class RateService implements IRateService {

    RateDAO rateDAO = new RateDAO();

    @Override
    public List<Rate> getList() {
        return rateDAO.getRateList();
    }

    @Override
    public Rate getRateById(int id, List<Rate> list) {
        for (Rate rate : list) {
            if (rate.getID() == id) {
                return rate;
            }
        }
        return null;
    }

    @Override
    public HashMap getHmAvgRate() {
        return rateDAO.getHmAvgRate();
    }

    @Override
    public List<Integer> getMentorsSuggest(List<Integer> listIDSkill, List<MentorCV> CVList) {
        List<Integer> idMentorsSuggest = new ArrayList<>();

        HashMap<Integer, Float> avgRateHm = getHmAvgRate();
        HashMap<Integer, Boolean> checkAddM = new HashMap<>();

        for (MentorCV cv : CVList) {
            checkAddM.put(cv.getID(), false);
            if (!avgRateHm.containsKey(cv.getID())) {
                avgRateHm.put(cv.getID(), 0f);
            }
        }
        if (listIDSkill != null) {
            for (MentorCV cv : CVList) {
                boolean skillExist = false;

                for (Skill skill : cv.getSkillList()) {
                    if (listIDSkill.contains(skill.getID())) {
                        skillExist = true;
                        break;
                    }
                }
                if (skillExist) {
                    if (idMentorsSuggest.size() == 0) {
                        idMentorsSuggest.add(cv.getID());
                        checkAddM.put(cv.getID(), true);
                    } else {
                        for (int i = 0; i < idMentorsSuggest.size(); i++) {
                            float rate1 = avgRateHm.get(idMentorsSuggest.get(i));
                            float rate2 = avgRateHm.get(cv.getID());
                            if (rate1 < rate2) {
                                idMentorsSuggest.add(i, cv.getID());
                                checkAddM.put(cv.getID(), true);
                                break;
                            }
                        }
                        if (!checkAddM.get(cv.getID())) {
                            idMentorsSuggest.add(cv.getID());
                            checkAddM.put(cv.getID(), true);
                        }
                    }
                    if (idMentorsSuggest.size() > 9) {
                        int id = idMentorsSuggest.get(idMentorsSuggest.size() - 1);
                        idMentorsSuggest.remove(id);
                        checkAddM.put(cv.getID(), false);
                    }

                }
            }
        } else {
            for (MentorCV cv : CVList) {
                if (idMentorsSuggest.size() == 0) {
                    idMentorsSuggest.add(cv.getID());
                    checkAddM.put(cv.getID(), true);
                } else {
                    for (int i = 0; i < idMentorsSuggest.size(); i++) {
                        float rate1 = avgRateHm.get(idMentorsSuggest.get(i));
                        float rate2 = avgRateHm.get(cv.getID());
                        if (rate1 < rate2) {
                            idMentorsSuggest.add(i, cv.getID());
                            checkAddM.put(cv.getID(), true);
                            break;
                        }
                    }
                    if (!checkAddM.get(cv.getID())) {
                        idMentorsSuggest.add(cv.getID());
                        checkAddM.put(cv.getID(), true);
                    }
                }
                if (idMentorsSuggest.size() > 9) {
                    int id = idMentorsSuggest.get(idMentorsSuggest.size() - 1);
                    idMentorsSuggest.remove(id);
                    checkAddM.put(cv.getID(), false);
                }
            }
        }

        if (idMentorsSuggest.size() < 9) {
            int lastIndex = idMentorsSuggest.size() - 1;
            for (MentorCV cv : CVList) {
                if (idMentorsSuggest.size() == 9) {
                    break;
                }
                if (!checkAddM.get(cv.getID())) {
                    if (idMentorsSuggest.size() == (lastIndex + 1)) {
                        idMentorsSuggest.add(cv.getID());
                        checkAddM.put(cv.getID(), true);
                    }
                    for (int i = lastIndex; i < idMentorsSuggest.size(); i++) {
                        float rate1 = avgRateHm.get(idMentorsSuggest.get(i));
                        float rate2 = avgRateHm.get(cv.getID());
                        if (rate1 < rate2) {
                            idMentorsSuggest.add(i, cv.getID());
                            checkAddM.put(cv.getID(), true);
                            break;
                        }
                    }
                    if (!checkAddM.get(cv.getID())) {
                        idMentorsSuggest.add(cv.getID());
                        checkAddM.put(cv.getID(), true);
                    }
                }
            }
        }
        return idMentorsSuggest;

    }

    @Override
    public String insert(Rate u, List<Rate> list) {
        Rate rate = rateDAO.insert(u);
        list.add(rate);
        return "OK";

    }

    @Override
    public String update(Rate u, List<Rate> list) {

        rateDAO.update(u);
        Rate rate = getRateById(u.getID(), list);
        rate.setMenteeID(u.getMenteeID());
        rate.setMentorID(u.getMentorID());
        rate.setSkillID(u.getSkillID());
        rate.setRate(u.getRate());
        return "OK";

    }

    @Override
    public String delete(int id, List<Rate> list) {
        rateDAO.delete(id);
        list.remove(getRateById(id, list));
        return "OK";
    }

    @Override
    public float getRateByMentorID(int id) {
        HashMap<Integer, Float> avgRate = getHmAvgRate();
        if (avgRate.get(id) == null) {
            return 0;
        }
        return avgRate.get(id);
    }

    @Override
    public int countRate(int rate, List<Rate> list) {
        int count = 0;
        for (Rate ratelist : list) {
            if (ratelist.getRate() == rate) {
                count++;
            }
        }
        return count;
    }

    @Override
    public Rate getRateByIds(int skillId, int mentorId, int menteeId, List<Rate> list) {
        for (Rate rate : list) {
            if (rate.getMentorID() == mentorId && rate.getSkillID() == skillId && rate.getMenteeID() == menteeId) {
                return rate;
            }
        }
        return null;
    }

    @Override
    public List<Rate> getListByMentorID(int mentorID, List<Rate> list) {
        List<Rate> rList = new ArrayList<>();
        for (Rate rate : list) {
            if (rate.getMentorID() == mentorID) {
                rList.add(rate);
            }
        }
        return rList;
    }

}
