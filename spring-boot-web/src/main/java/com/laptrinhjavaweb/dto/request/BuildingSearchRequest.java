package com.laptrinhjavaweb.dto.request;

public class BuildingSearchRequest {

    private String name;
    private Integer floorArea;
    private String districtCode;
    private String ward;
    private String street;
    private Integer numberOfBasement;
    private String direction;
    private String level;
    private Integer areaFrom;
    private Integer areaTo;
    private Integer rentPriceFrom;
    private Integer rentPriceTo;
    private String staffFullName;
    private String staffPhone;
    private Integer staffId;
    private String[] types;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Integer getFloorArea() {
        return floorArea;
    }
    public void setFloorArea(Integer floorArea) {
        this.floorArea = floorArea;
    }
    public String getDistrictCode() {
        return districtCode;
    }
    public void setDistrictCode(String districtCode) {
        this.districtCode = districtCode;
    }
    public String getWard() {
        return ward;
    }
    public void setWard(String ward) {
        this.ward = ward;
    }
    public String getStreet() {
        return street;
    }
    public void setStreet(String street) {
        this.street = street;
    }
    public Integer getNumberOfBasement() {
        return numberOfBasement;
    }
    public void setNumberOfBasement(Integer numberOfBasement) {
        this.numberOfBasement = numberOfBasement;
    }
    public String getDirection() {
        return direction;
    }
    public void setDirection(String direction) {
        this.direction = direction;
    }
    public String getLevel() {
        return level;
    }
    public void setLevel(String level) {
        this.level = level;
    }
    public Integer getAreaFrom() {
        return areaFrom;
    }
    public void setAreaFrom(Integer areaFrom) {
        this.areaFrom = areaFrom;
    }
    public Integer getAreaTo() {
        return areaTo;
    }
    public void setAreaTo(Integer areaTo) {
        this.areaTo = areaTo;
    }
    public Integer getRentPriceFrom() {
        return rentPriceFrom;
    }
    public void setRentPriceFrom(Integer rentPriceFrom) {
        this.rentPriceFrom = rentPriceFrom;
    }
    public Integer getRentPriceTo() {
        return rentPriceTo;
    }
    public void setRentPriceTo(Integer rentPriceTo) {
        this.rentPriceTo = rentPriceTo;
    }
    public String getStaffFullName() {
        return staffFullName;
    }
    public void setStaffFullName(String staffFullName) {
        this.staffFullName = staffFullName;
    }
    public String getStaffPhone() {
        return staffPhone;
    }
    public void setStaffPhone(String staffPhone) {
        this.staffPhone = staffPhone;
    }
    public Integer getStaffId() {
        return staffId;
    }
    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }
    public String[] getTypes() {
        return types;
    }
    public void setTypes(String[] types) {
        this.types = types;
    }





}
