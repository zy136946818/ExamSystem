package com.neuedu.cn.pojo;

public class Category {
    private String  id;
    private String  examCategory;
    private int     isDetele;
    private String  createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getExamCategory() {
        return examCategory;
    }

    public void setExamCategory(String examCategory) {
        this.examCategory = examCategory;
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
        return "Category{" +
                "id='" + id + '\'' +
                ", examCategory='" + examCategory + '\'' +
                ", isDetele=" + isDetele +
                ", createTime='" + createTime + '\'' +
                '}';
    }
}
