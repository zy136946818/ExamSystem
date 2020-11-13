package com.neuedu.cn.pojo;

import org.springframework.format.annotation.DateTimeFormat;

public class Bank {

    private  String  id;
    private  String  titleName;
    private  String  solutionA;
    private  String  solutionB;
    private  String  solutionC;
    private  String  solutionD;
    private  String  solutionT;
    private  String  examCategory;
    private  String  categoryName;
    private  int   isDetele;
    private  String  createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitleName() {
        return titleName;
    }

    public void setTitleName(String titleName) {
        this.titleName = titleName;
    }

    public String getSolutionA() {
        return solutionA;
    }

    public void setSolutionA(String solutionA) {
        this.solutionA = solutionA;
    }

    public String getSolutionB() {
        return solutionB;
    }

    public void setSolutionB(String solutionB) {
        this.solutionB = solutionB;
    }

    public String getSolutionC() {
        return solutionC;
    }

    public void setSolutionC(String solutionC) {
        this.solutionC = solutionC;
    }

    public String getSolutionD() {
        return solutionD;
    }

    public void setSolutionD(String solutionD) {
        this.solutionD = solutionD;
    }

    public String getSolutionT() {
        return solutionT;
    }

    public void setSolutionT(String solutionT) {
        this.solutionT = solutionT;
    }

    public String getExamCategory() {
        return examCategory;
    }

    public void setExamCategory(String examCategory) {
        this.examCategory = examCategory;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getIsDetele() {
        return isDetele;
    }

    public void setIsDetele(int isDetele) {
        this.isDetele = isDetele;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Bank{" +
                "id='" + id + '\'' +
                ", titleName='" + titleName + '\'' +
                ", solutionA='" + solutionA + '\'' +
                ", solutionB='" + solutionB + '\'' +
                ", solutionC='" + solutionC + '\'' +
                ", solutionD='" + solutionD + '\'' +
                ", solutionT='" + solutionT + '\'' +
                ", examCategory='" + examCategory + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", isDetele=" + isDetele +
                ", createTime='" + createTime + '\'' +
                '}';
    }
}
