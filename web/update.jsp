<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Barang</title>
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

        p {
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Mengatur koneksi ke database
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/warung";
        String username = "dika1";
        String password = "dika1234";
        conn = DriverManager.getConnection(url, username, password);

        // Mendapatkan parameter yang dikirimkan dari form
        int id = Integer.parseInt(request.getParameter("kode_barang"));
        String namaBarang = request.getParameter("nama_barang");
        String hargaJual = request.getParameter("harga_jual");
        String jumlahBarang = request.getParameter("jumlah_barang");

        // Memperbarui data dalam tabel berdasarkan id
        pstmt = conn.prepareStatement("UPDATE tblbarang SET nama_barang = ?, harga_jual = ?, jumlah_barang = ? WHERE kode_barang = ?");
        pstmt.setString(1, namaBarang);
        pstmt.setString(2, hargaJual);
        pstmt.setString(3, jumlahBarang);
        pstmt.setInt(4, id);
        int rowsAffected = pstmt.executeUpdate();

        // Menampilkan pesan berhasil atau gagal
        if (rowsAffected > 0) {
            out.println("Data berhasil diperbarui.");
        } else {
            out.println("Gagal memperbarui data.");
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Menutup koneksi dan sumber daya
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
