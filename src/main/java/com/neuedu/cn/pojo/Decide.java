package com.neuedu.cn.pojo;

public class Decide {
    private String id;
    private String titleName;
    private String solution;
    private String solutionT;
    private String examCategory;
    private  String categoryName;
    private int isDetele;
    private String createTime;

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

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
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
        return "Decide{" +
                "id='" + id + '\'' +
                ", titleName='" + titleName + '\'' +
                ", solution='" + solution + '\'' +
                ", solutionT='" + solutionT + '\'' +
                ", examCategory='" + examCategory + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", isDetele=" + isDetele +
                ", createTime='" + createTime + '\'' +
                '}';
    }
}
