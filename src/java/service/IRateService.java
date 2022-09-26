/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Rate;

/**
 *
 * @author Admin
 */
public interface IRateService {
    Rate geRateById(int id, List<Rate> list);

    boolean insert(Rate u);

    void update(Rate u);

    boolean delete(Rate u);
}
