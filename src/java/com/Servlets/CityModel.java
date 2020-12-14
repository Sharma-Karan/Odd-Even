
package com.Servlets;

public class CityModel {
    private String cid;
    private String cityname;
    private String statename;

    public String getStatename() {
        return statename;
    }

    public void setStatename(String statename) {
        this.statename = statename;
    }

    public CityModel(String cityname, String statename, String startDate, String endDate) {
        this.cityname = cityname;
        this.statename = statename;
        this.startDate = startDate;
        this.endDate = endDate;
    }
    private String startDate;
    private String endDate;

    public String getCid() {
        return cid;
    }

    public String getCityname() {
        return cityname;
    }

    public String getStartDate() {
        return startDate;
    }

    public CityModel(String cityname, String startDate, String endDate) {
        this.cityname = cityname;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
    
}
