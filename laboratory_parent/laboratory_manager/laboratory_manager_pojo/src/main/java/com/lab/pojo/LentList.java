package com.lab.pojo;

import java.io.Serializable;
import java.util.Date;

public class LentList implements Serializable {
    private Long id;

    private String name;

    private String number;

    private String phone;

    private String message;

    private Date lenttime;

    private Date backtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public Date getLenttime() {
        return lenttime;
    }

    public void setLenttime(Date lenttime) {
        this.lenttime = lenttime;
    }

    public Date getBacktime() {
        return backtime;
    }

    public void setBacktime(Date backtime) {
        this.backtime = backtime;
    }

}