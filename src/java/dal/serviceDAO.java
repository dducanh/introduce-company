/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Service;
import model.ServiceDetail;

/**
 *
 * @author ADMIN
 */
public class serviceDAO extends BaseDAO {

    public Service getOneServiceByID(int serviceID) {

        try {
            String sql = "SELECT \n"
                    + "       [name]\n"
                    + "      ,[leaderName]\n"
                    + "      ,[description]\n"
                    + "      ,[image]\n"
                    + "  FROM [dbo].[Service] where id = ?";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, serviceID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Service t = new Service();
                t.setNameService(rs.getString("name"));
                t.setLeaderName(rs.getString("leaderName"));
                t.setDescription(rs.getString("description"));
                t.setImage(rs.getString("image"));
                return t;
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Service> getService() {
        ArrayList<Service> services = new ArrayList<>();
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[name]\n"
                    + "      ,[leaderName]\n"
                    + "      ,[description]\n"
                    + "      ,[image]\n"
                    + "  FROM [dbo].[Service]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Service t = new Service();
                t.setId(rs.getInt("id"));
                t.setNameService(rs.getString("name"));
                t.setLeaderName(rs.getString("leaderName"));
                t.setDescription(rs.getString("description"));
                t.setImage(rs.getString("image"));
                services.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return services;
    }

    public ArrayList<ServiceDetail> getOneServiceDetailByID(int serviceID, int numberArticle) {
        ArrayList<ServiceDetail> ServiceDetail = new ArrayList<>();
        try {
            String sql = "SELECT top (?) [serviceID]\n"
                    + "      ,[serviceDetailID]\n"
                    + "      ,[serviceDetail]\n"
                    + "      ,[leader]\n"
                    + "      ,[description]\n"
                    + "      ,[image]\n"
                    + "  FROM [dbo].[ServiceDetail] where serviceID = ?";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, numberArticle);
            statement.setInt(2, serviceID);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ServiceDetail t = new ServiceDetail();
                t.setServiceDetailID(rs.getInt("serviceDetailID"));
                t.setServiceDetail(rs.getString("serviceDetail"));
                t.setLeaderName(rs.getString("leader"));
                t.setDescription(rs.getString("description"));
                t.setImage(rs.getString("image"));
                ServiceDetail.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ServiceDetail;
    }

    public ArrayList<ServiceDetail> getListServiceDetailByID(int serviceID) {
        ArrayList<ServiceDetail> ServiceDetail = new ArrayList<>();
        try {
            String sql = "SELECT  [serviceID]\n"
                    + "      ,[serviceDetailID]\n"
                    + "      ,[serviceDetail]\n"
                    + "      ,[leader]\n"
                    + "      ,[description]\n"
                    + "      ,[image]\n"
                    + "  FROM [dbo].[ServiceDetail] where serviceID = ?";

            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, serviceID);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ServiceDetail t = new ServiceDetail();
                t.setServiceDetailID(rs.getInt("serviceDetailID"));
                t.setServiceDetail(rs.getString("serviceDetail"));
                t.setLeaderName(rs.getString("leader"));
                t.setDescription(rs.getString("description"));
                t.setImage(rs.getString("image"));
                ServiceDetail.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(serviceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ServiceDetail;
    }

}
