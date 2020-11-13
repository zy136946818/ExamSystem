package com.neuedu.cn.pojo;

public class Subject {
    private String id;
    private String examId;
    private String subjectName;
    private String subjectId;
    private  String  solutionA;
    private  String  solutionB;
    private  String  solutionC;
    private  String  solutionD;
    private  String  solutionT;
    private  String  examCategory;
    private  String  categoryName;

    private int isDelete;

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    private String createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId;
    }


    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Subject{" +
                "id='" + id + '\'' +
                ", examId='" + examId + '\'' +
                ", subjectName='" + subjectName + '\'' +
                ", subjectId='" + subjectId + '\'' +
                ", solutionA='" + solutionA + '\'' +
                ", solutionB='" + solutionB + '\'' +
                ", solutionC='" + solutionC + '\'' +
                ", solutionD='" + solutionD + '\'' +
                ", solutionT='" + solutionT + '\'' +
                ", examCategory='" + examCategory + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", isDelete=" + isDelete +
                ", createTime='" + createTime + '\'' +
                '}';
    }
}
