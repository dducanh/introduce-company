/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.contact;

/**
 *
 * @author ADMIN
 */
public class contactDAO extends BaseDAO{

    public void insert(contact t) {
        try {
            String sql = "INSERT INTO [dbo].[Contact]\n"
                    + "           ([senderName]\n"
                    + "           ,[senderEmail]\n"
                    + "           ,[subject]\n"
                    + "           ,[Message])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, t.getSenderName());
            statement.setString(2, t.getSenderEmail());
            statement.setString(3, t.getSubject());
            statement.setString(4, t.getMessage());

            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(contactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
