/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlykhachsan_btl;

import java.awt.Dimension;
import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.Rectangle;
import java.sql.*;
import java.sql.SQLException;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author itsHuaan
 */
public class GenericClass {

    //setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    public static String selectPhong = "SELECT * FROM phong";
    public static String selectDichVu = "SELECT * FROM dichvu";
    public static String loadSoLuongPhong = "SELECT COUNT(*) AS SoLuong FROM phong WHERE TinhTrang = ?";
    public static String maNhanVien, hoTen;
    public static boolean isFromThuePhong = false;

    public static void XoaPhienDangNhap() {
        maNhanVien = null;
        hoTen = null;
    }

    public static java.util.Date getDateFromDateChooser(com.toedter.calendar.JDateChooser dateChooser) {
        java.util.Date sqlDate = null;
        java.util.Date date = dateChooser.getDate();
        if (date != null) {
            sqlDate = new java.util.Date(date.getTime());
        }
        return sqlDate;
    }

    public static String generateRandomString(String prefix, int n, int m) {
        Random random = new Random();
        int randomNumber = random.nextInt(n) + m;
        String randomString = prefix.toUpperCase() + randomNumber;
        return randomString;
    }

    public static void updateTinhTrangPhong(Connection connection, String maPhong, String tinhTrang) {
        try {
            String updateQuery = "UPDATE phong SET TinhTrang = ? WHERE MaPhong = ?";
            java.sql.PreparedStatement pst = connection.prepareStatement(updateQuery);
            pst.setString(1, tinhTrang);
            pst.setString(2, maPhong);
            pst.executeUpdate();
            pst.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatPhong.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void centerOnScreen(JFrame frame) {
        GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
        GraphicsDevice[] screens = ge.getScreenDevices();
        GraphicsDevice secondaryScreen = null;

        if (screens.length > 1) {
            secondaryScreen = screens[1];
        }

        if (secondaryScreen != null) {
            Dimension size = frame.getSize();
            Rectangle secondaryBounds = secondaryScreen.getDefaultConfiguration().getBounds();
            int x = secondaryBounds.x + (int) (secondaryBounds.getWidth() - size.getWidth()) / 2;
            int y = secondaryBounds.y + (int) (secondaryBounds.getHeight() - size.getHeight()) / 2;
            frame.setBounds(x, y, size.width, size.height);
        } else {
            Rectangle bounds = screens[0].getDefaultConfiguration().getBounds();
            int x = (int) ((bounds.getWidth() - frame.getWidth()) / 2);
            int y = (int) ((bounds.getHeight() - frame.getHeight()) / 2);
            frame.setLocation(x, y);
        }
    }

    public static void loadData(Connection connection, String query, JTable jTable) {
        try {
            DefaultTableModel model = (DefaultTableModel) jTable.getModel();
            model.setRowCount(0);

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                Object[] col = new Object[model.getColumnCount()];
                for (int i = 0; i < model.getColumnCount(); i++) {
                    col[i] = resultSet.getObject(i + 1);
                }
                model.addRow(col);
            }

            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    public static void numbersOnly(java.awt.event.KeyEvent evt) {
        // TODO add your handling code here:
        char c = evt.getKeyChar();
        if (!Character.isDigit(c)) {
            evt.consume();
        }
    }

    public static void charactersOnly(java.awt.event.KeyEvent evt) {
        char c = evt.getKeyChar();
        if (!Character.isLetter(c) && c != ' ') {
            evt.consume();
        }
    }

    public static void updateCSDL(Connection connection, String query, String parameter) {
        try (java.sql.PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, parameter);
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(QuanLyKhachHang.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
