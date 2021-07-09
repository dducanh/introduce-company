/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class ServiceDetail {
    private int serviceID;
    private int serviceDetailID;
    
    private String serviceDetail;
    private String leaderName;
    private String description;
    private String image;

    public ServiceDetail() {
    }

    public ServiceDetail(int serviceID, int serviceDetailID, String serviceDetail, String leaderName, String description, String image) {
        this.serviceID = serviceID;
        this.serviceDetailID = serviceDetailID;
        this.serviceDetail = serviceDetail;
        this.leaderName = leaderName;
        this.description = description;
        this.image = image;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public int getServiceDetailID() {
        return serviceDetailID;
    }

    public void setServiceDetailID(int serviceDetailID) {
        this.serviceDetailID = serviceDetailID;
    }

    public String getServiceDetail() {
        return serviceDetail;
    }

    public void setServiceDetail(String serviceDetail) {
        this.serviceDetail = serviceDetail;
    }

    public String getLeaderName() {
        return leaderName;
    }

    public void setLeaderName(String leaderName) {
        this.leaderName = leaderName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
}
