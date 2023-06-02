<%-- 
    Document   : admin
    Created on : May 30, 2023, 4:13:08 PM
    Author     : Dodi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Daftar Barang</title>
    <link rel="icon" type="image/png" href="images/icons/edit.png"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            color: #333;
            text-decoration: none;
        }

        a:hover {
            color: #555;
        }
    </style>
</head>
<body>
    <h1>Daftar Barang</h1>
    <a href="index.jsp">Kembali ke Beranda</a>
    <table border="5">
        <tr>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Harga Jual</th>
            <th>Jumlah Barang</th>
            <th>Edit</th>
        </tr>

        <% 
        // Koneksi ke database
        String url = "jdbc:postgresql://localhost:5432/warung";
        String username = "dika1";
        String password = "dika1234";
        Connection connection = null;

        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, username, password);

            // Query untuk mengambil data dari tabel
            String query = "SELECT * FROM tblbarang ORDER BY kode_barang ASC";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            // Menampilkan data pada tabel
            while (resultSet.next()) {
                %>
                <tr>
                    <td><%= resultSet.getString("kode_barang") %></td>
                    <td><%= resultSet.getString("nama_barang") %></td>
                    <td><%= resultSet.getString("harga_jual") %></td>
                    <td><%= resultSet.getString("jumlah_barang") %></td>
                    <td><a href="edit.jsp?kode_barang=<%= resultSet.getString("kode_barang") %>">Edit</a></td>
                </tr>
                <%
            }

            // Menutup statement dan koneksi
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </table>
</body>
</html>
