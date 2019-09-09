package com.lab.pojo;

import java.io.Serializable;
import java.util.Date;

public class EquipmentList implements Serializable {
    private Long id;

    private String equipmentname;

    private String equipmentcontent;

    private Integer number;

    private String image;

    private Integer status;

    private Date createtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEquipmentname() {
        return equipmentname;
    }

    public void setEquipmentname(String equipmentname) {
        this.equipmentname = equipmentname == null ? null : equipmentname.trim();
    }

    public String getEquipmentcontent() {
        return equipmentcontent;
    }

    public void setEquipmentcontent(String equipmentcontent) {
        this.equipmentcontent = equipmentcontent == null ? null : equipmentcontent.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}