/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ASUS
 */
public class PageInfor {

    private int npp; // numperpage // can truyen vao
    private int size; // can truyen vao
    private int np; //number page (so trang)
    private int cp; //current page // can truyen vao
    private int start;
    private int end;
    private int [] arrNrpp = {5,10,15,20};
    private int [] arrNrpp1 = {3,6,9,12};

    public int[] getArrNrpp() {
        return arrNrpp;
    }

    public void setArrNrpp1(int[] arrNrpp1) {
        this.arrNrpp1 = arrNrpp1;
    }

    public int[] getArrNrpp1() {
        return arrNrpp1;
    }

    public void setArrNrpp(int[] arrNrpp) {
        this.arrNrpp = arrNrpp;
    }
 
    public PageInfor(int npp, int size, int cp) {
        this.npp = npp;
        this.size = size;
        this.cp = cp;
        this.np = (size % npp == 0 ? size / npp : size / npp + 1);
        this.start = (cp - 1) * npp;
        if(size == 0 ){
            this.end = 0;
        }else{
            this.end = Math.min(cp * npp, size)-1;
        }
    }

    public int getNpp() {
        return npp;
    }

    public void setNpp(int npp) {
        this.npp = npp;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getNp() {
        return np;
    }

    public void setNp(int np) {
        this.np = np;
    }

    public int getCp() {
        return cp;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public static void main(String[] args) {
        PageInfor page = new PageInfor(5, 0, 1);
        System.out.println(page.getCp());
        System.out.println(page.getStart());
        System.out.println(page.getEnd());
        System.out.println(page.getNp());
    }

}
