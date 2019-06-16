package com.summer.ssm.domain;

import java.io.Serializable;

public class Traveller implements Serializable {
    private Integer id;
    private String name;
    private String sex;
    private String phoneNo;
    private Integer credentialsType;
    private String credentialsTypeStr;
    private String credentialsNo;
    private Integer travellerType;
    private String travellerTypeStr;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public Integer getCredentialsType() {
        return credentialsType;
    }

    public void setCredentialsType(Integer credentialsType) {
        this.credentialsType = credentialsType;
    }

    public String getCredentialsNo() {
        return credentialsNo;
    }

    public void setCredentialsNo(String credentialsNo) {
        this.credentialsNo = credentialsNo;
    }

    public Integer getTravellerType() {
        return travellerType;
    }

    public void setTravellerType(Integer travellerType) {
        this.travellerType = travellerType;
    }

    public String getCredentialsTypeStr() {
        if (this.credentialsType == null) {
            this.credentialsTypeStr = "";
        }
        switch (this.credentialsType) {
            case 0:
                this.credentialsTypeStr = "身份证";
                break;
            case 1:
                this.credentialsTypeStr = "护照";
                break;
            case 2:
                this.credentialsTypeStr = "军官证";
                break;
        }

        return credentialsTypeStr;
    }

    public void setCredentialsTypeStr(String credentialsTypeStr) {
        this.credentialsTypeStr = credentialsTypeStr;
    }

    public String getTravellerTypeStr() {
        if (this.travellerType == null) {
            this.travellerTypeStr = "";
        }
        switch (this.travellerType) {
            case 0:
                this.travellerTypeStr = "成人";
                break;
            case 1:
                this.travellerTypeStr = "儿童";
                break;
        }
        return travellerTypeStr;
    }

    public void setTravellerTypeStr(String travellerTypeStr) {
        this.travellerTypeStr = travellerTypeStr;
    }

    @Override
    public String toString() {
        return "Traveller{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", phoneNo='" + phoneNo + '\'' +
                ", credentialsType=" + credentialsType +
                ", credentialsTypeStr='" + credentialsTypeStr + '\'' +
                ", credentialsNo='" + credentialsNo + '\'' +
                ", travellerType=" + travellerType +
                ", travellerTypeStr='" + travellerTypeStr + '\'' +
                '}';
    }
}
