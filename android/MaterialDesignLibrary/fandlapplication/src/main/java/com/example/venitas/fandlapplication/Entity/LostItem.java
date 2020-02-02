package com.example.venitas.fandlapplication.Entity;

/**
 * Created by Venitas on 16/3/12.
 */
public class LostItem {
    int id;
    String name;
    int typeId;
    String typeName;
    String datetime;
    int stationId;
    String stationName;
    int lineId;
    int lineFlag;
    int phone;
    int status;

    public LostItem(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public LostItem(int id, String name, String stationName, String datetime) {
        this.id = id;
        this.name = name;
        this.stationName = stationName;
        this.datetime = datetime;
    }

    public LostItem() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public int getStationId() {
        return stationId;
    }

    public void setStationId(int stationId) {
        this.stationId = stationId;
    }

    public String getStationName() {
        return stationName;
    }

    public void setStationName(String stationName) {
        this.stationName = stationName;
    }

    public int getLineId() {
        return lineId;
    }

    public void setLineId(int lineId) {
        this.lineId = lineId;
    }

    public int getLineFlag() {
        return lineFlag;
    }

    public void setLineFlag(int lineFlag) {
        this.lineFlag = lineFlag;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
