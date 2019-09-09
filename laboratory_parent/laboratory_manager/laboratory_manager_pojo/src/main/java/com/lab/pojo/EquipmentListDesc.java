package com.lab.pojo;

import java.io.Serializable;
import java.util.Date;

public class EquipmentListDesc implements Serializable {
    private Long id;

    private String equipmentdesc;

    private Date createtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEquipmentdesc() {
        return equipmentdesc;
    }

    public void setEquipmentdesc(String equipmentdesc) {
        this.equipmentdesc = equipmentdesc == null ? null : equipmentdesc.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}