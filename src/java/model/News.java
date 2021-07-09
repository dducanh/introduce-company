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
public class News {
     private int newsID ;
     private int topicID ;
     private String title ;
     private String shortDescription ;
     private String detailDescription ;
     private String image ;
     private String author ;
     private String timePost ;

    public News() {
    }

    public News(int newsID, int topicID, String title, String shortDescription, String detailDescription, String image, String author, String timePost) {
        this.newsID = newsID;
        this.topicID = topicID;
        this.title = title;
        this.shortDescription = shortDescription;
        this.detailDescription = detailDescription;
        this.image = image;
        this.author = author;
        this.timePost = timePost;
    }

    public int getNewsID() {
        return newsID;
    }

    public void setNewsID(int newsID) {
        this.newsID = newsID;
    }

    public int getTopicID() {
        return topicID;
    }

    public void setTopicID(int topicID) {
        this.topicID = topicID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getDetailDescription() {
        return detailDescription;
    }

    public void setDetailDescription(String detailDescription) {
        this.detailDescription = detailDescription;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTimePost() {
        return timePost;
    }

    public void setTimePost(String timePost) {
        this.timePost = timePost;
    }

   
     
     
}
