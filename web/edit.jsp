<%-- 
    Document   : edit
    Created on : May 30, 2023, 7:42:19 PM
    Author     : Dodi
--%>

<%-- 
    Document   : edit.jsp
    Created on : May 30, 2023, 5:58:26 PM
    Author     : Dodi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Edit Barang</title>
<link rel="icon" type="image/png" href="images/icons/edit.png"/>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        margin: 0;
        padding: 20px;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"] {
        padding: 5px;
        width: 300px;
    }

    input[type="submit"] {
        padding: 10px;
        background-color: #333;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    a {
        color: #333;
        text-decoration: none;
    }
</style>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Mengatur koneksi ke database
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/warung";
        String username = "dika1";
        String password = "dika1234";
        conn = DriverManager.getConnection(url, username, password);

        // Mendapatkan parameter id dari URL
        int id = Integer.parseInt(request.getParameter("kode_barang"));

        // Mengambil data dari tabel berdasarkan id
        pstmt = conn.prepareStatement("SELECT * FROM tblbarang WHERE kode_barang = ?");
        pstmt.setInt(1, id);
        rs = pstmt.executeQuery();

        // Menampilkan form pengeditan data
        if (rs.next()) {
            int existingId = rs.getInt("kode_barang");
            String namaBarang = rs.getString("nama_barang");
            String hargaJual = rs.getString("harga_jual");
            String jumlahBarang = rs.getString("jumlah_barang");

            // Menampilkan form dengan nilai awal dari data yang akan diedit
            out.println("<form action=\"update.jsp\" method=\"post\">");
            out.println("ID: <input type=\"text\" name=\"kode_barang\" value=\"" + existingId + "\" readonly><br>");
            out.println("Nama Barang: <input type=\"text\" name=\"nama_barang\" value=\"" + namaBarang + "\"><br>");
            out.println("Harga Jual: <input type=\"text\" name=\"harga_jual\" value=\"" + hargaJual + "\"><br>");
            out.println("Jumlah Barang: <input type=\"text\" name=\"jumlah_barang\" value=\"" + jumlahBarang + "\"><br>");
            out.println("<input type=\"submit\" value=\"Update\">");
            out.println("</form>");
        } else {
            out.println("Data tidak ditemukan.");
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Menutup koneksi dan sumber daya
        if (rs != null) {
            rs.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>
<a href="admin.jsp">Kembali ke Tabel</a>
</body>
</html>

