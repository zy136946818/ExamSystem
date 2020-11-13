package com.neuedu.cn.pojo;

import org.springframework.format.annotation.DateTimeFormat;

public class Users {
    private String id;
    private String name;
    private String telephone;
    private String password;
    private String againpass;
    private int  is_detele;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String create_time;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAgainpass() {
        return againpass;
    }

    public void setAgainpass(String againpass) {
        this.againpass = againpass;
    }

    public int getIs_detele() {
        return is_detele;
    }

    public void setIs_detele(int is_detele) {
        this.is_detele = is_detele;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", telephone='" + telephone + '\'' +
                ", password='" + password + '\'' +
                ", againpass='" + againpass + '\'' +
                ", is_detele=" + is_detele +
                ", create_time='" + create_time + '\'' +
                '}';
    }
}
