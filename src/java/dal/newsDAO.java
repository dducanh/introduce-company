package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.News;
import model.Service;
import model.topicNews;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author ADMIN
 */
public class newsDAO extends BaseDAO {

    public News getOneNewsByID(int newsID) {

        try {
            String sql = "SELECT \n"
                    + "      [topicID]\n"
                    + "      ,[title]\n"
                    + "      ,[shortDescripstion]\n"
                    + "      ,[detailDescriptioni]\n"
                    + "      ,[image]\n"
                    + "      ,[author]\n"
                    + "      ,[timePost]\n"
                    + "  FROM [dbo].[News] where newsID = ?";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, newsID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News t = new News();
                t.setTopicID(rs.getInt("topicID"));
                t.setTitle(rs.getString("title"));
                t.setShortDescription(rs.getString("shortDescripstion"));
                t.setDetailDescription(rs.getString("detailDescriptioni"));
                t.setImage(rs.getString("image"));
                t.setAuthor(rs.getString("author"));
                t.setTimePost(rs.getString("timePost"));
                return t;
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getTotalNews() throws Exception {

        int count = 0;
        try {
            String query = "select count(*) from News";
            PreparedStatement statement = connection.prepareStatement(query);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;

    }

    public ArrayList<News> getAllNews(int pageIndex, int pageSize) {
        ArrayList<News> news = new ArrayList<>();
        try {
            String sql = "select *from("
                    + "select ROW_NUMBER() over (order by newsID ASC) as rn, *\n"
                    + "from News"
                    + ")as x\n"
                    + "where rn between ?*?-2"
                    + "and ?*? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, pageIndex);
            statement.setInt(2, pageSize);
            statement.setInt(3, pageIndex);
            statement.setInt(4, pageSize);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News t = new News();
                t.setNewsID(rs.getInt("newsID"));
                t.setTopicID(rs.getInt("topicID"));
                t.setTitle(rs.getString("title"));
                t.setShortDescription(rs.getString("shortDescripstion"));
                t.setDetailDescription(rs.getString("detailDescriptioni"));
                t.setImage(rs.getString("image"));
                t.setAuthor(rs.getString("author"));
                t.setTimePost(rs.getString("timePost"));
                news.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return news;
    }

    public List<News> search(String txt, int pageIndex, int pageSize) throws Exception {

        try {
            List<News> list = new ArrayList<>();
            String query = "select *from("
                    + "select ROW_NUMBER() over (order by newsID ASC) as rn,*\n"
                    + "from News where title \n"
                    + "like ?"
                    + ")as x\n"
                    + "where rn between ?*?-2"
                    + "and ?*?";
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setString(1, "%" + txt + "%");
            statement.setInt(2, pageIndex);
            statement.setInt(3, pageSize);
            statement.setInt(4, pageIndex);
            statement.setInt(5, pageSize);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News d = new News(rs.getInt("newsID"),
                        rs.getInt("topicID"),
                        rs.getString("title"),
                        rs.getString("shortDescripstion"),
                        rs.getString("detailDescriptioni"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getString("timePost"));
                list.add(d);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            throw e;

        }
    }

    public int count(String txt) throws Exception {

        try {
            String query = "select count(*) from News \n"
                    + "where title like ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, "%" + txt + "%");
            ResultSet rs = statement.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        }
    }
        public int countTopic(int topicID) throws Exception {

        try {
            String query = "select count(*) from News \n"
                    + "where topicID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, topicID);
            ResultSet rs = statement.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        }
    }

    public ArrayList<topicNews> getTopic() {
        ArrayList<topicNews> topicNews = new ArrayList<>();
        try {
            String sql = "SELECT [topicID]\n"
                    + "      ,[TopicName]\n"
                    + "  FROM [dbo].[TocpicNews]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                topicNews t = new topicNews();
                t.setTopicID(rs.getInt("topicID"));
                t.setTopicName(rs.getString("TopicName"));               
                topicNews.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return topicNews;
    }
    public ArrayList<News> getAllNewsByTopic(int pageIndex, int pageSize,int topicID) {
        ArrayList<News> news = new ArrayList<>();
        try {
            String sql = "select *from("
                    + "select ROW_NUMBER() over (order by newsID ASC) as rn, *\n"
                    + "from News"
                    + " where topicID = ?)as x\n"
                    + "where rn between ?*?-2"
                    + "and ?*? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, topicID);
            statement.setInt(2, pageIndex);
            statement.setInt(3, pageSize);
            statement.setInt(4, pageIndex);
            statement.setInt(5, pageSize);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                News t = new News();
                t.setNewsID(rs.getInt("newsID"));
                t.setTopicID(rs.getInt("topicID"));
                t.setTitle(rs.getString("title"));
                t.setShortDescription(rs.getString("shortDescripstion"));
                t.setDetailDescription(rs.getString("detailDescriptioni"));
                t.setImage(rs.getString("image"));
                t.setAuthor(rs.getString("author"));
                t.setTimePost(rs.getString("timePost"));
                news.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return news;
    }
}
