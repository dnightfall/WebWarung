<%-- 
    Document   : Minuman
    Created on : May 27, 2023, 3:54:30 PM
    Author     : Dodi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Minuman</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="icon" type="image/png" href="images/icons/shopping-cart.png"/>
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesoeet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   </head>
   <body>
      <!-- banner bg main start -->
      <div class="banner_bg_main">
         <!-- header top section start -->
         <!-- header top section start -->
         <!-- logo section start -->
         <div class="logo_section">
            <div class="container">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="logo"><a href="index.jsp"></a></div>
                  </div>
               </div>
            </div>
         </div>
         <!-- logo section end -->
         <!-- header section start -->
         <div class="header_section">
            <div class="container">
               <div class="containt_main">
                  <div id="mySidenav" class="sidenav">
                     <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                     <a href="index.jsp">Beranda</a>
                     <a href="Makanan.jsp">Makanan</a>
                     <a href="Minuman.jsp">Minuman</a>
                     <a href="Lain.jsp">Lain-lain</a>
                  </div>
                  <span class="toggle_icon" onclick="openNav()"><img src="images/toggle-icon.png"></span>
                  
                  <div class="main">
                     <!-- Another variation with a button -->
                     <div class="input-group">
                        <input type="text" class="form-control" id="search-input" placeholder="Search this blog">
                        <div class="input-group-append">
                           <button class="btn btn-secondary" type="button" id="search-button" style="background-color: #f26522; border-color:#f26522 ">
                           <i class="fa fa-search"></i>
                           </button>
                           <script>
                              document.getElementById("search-button").addEventListener("click", function() {
                                searchAndNavigate();
                              });
                            
                              document.getElementById("search-input").addEventListener("keydown", function(event) {
                                if (event.key === "Enter") {
                                  searchAndNavigate();
                                }
                              });
                            
                              function searchAndNavigate() {
                                var searchTerm = document.getElementById("search-input").value;
                                if (searchTerm) {
                                  var regex = new RegExp(searchTerm, "gi");
                                  var pageContent = document.documentElement.innerHTML;
                                  var matches = pageContent.match(regex);
                                  if (matches) {
                                    var firstMatchElement = findFirstMatchElement(matches[0]);
                                    if (firstMatchElement) {
                                      firstMatchElement.scrollIntoView({ behavior: "smooth", block: "center" });
                                    }
                                  } else {
                                    alert("Tidak ada hasil ditemukan.");
                                  }
                                }
                              }
                            
                              function findFirstMatchElement(match) {
                                var elements = document.getElementsByTagName("body")[0].getElementsByTagName("*");
                                for (var i = 0; i < elements.length; i++) {
                                  var element = elements[i];
                                  if (element.innerHTML.match(match)) {
                                    return element;
                                  }
                                }
                                return null;
                              }
                            </script>
                            
                        </div>
                     </div>
                  </div>
                  <div class="header_box">
                     <div class="login_menu">
                        <ul>
                           <li><a href="login.jsp">
                              <i class="fa fa-user" aria-hidden="true"></i>
                              <span class="padding_10">Login</span></a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header section end -->
         <!-- banner section start -->
         <div class="banner_section layout_padding">
            <div class="container">
               <div id="my_slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Welcome to<br>Koperasi Asrama IPB Ekasari</h1>
                              <div class="buynow_bt"><a href="http://wa.me/6282316653219">Kontak Admin</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header section end -->
         <!-- banner section start -->
         
         <!-- banner section end -->
      </div>
      <!-- banner bg main end -->
      <!-- electronic section start -->
      <div class="fashion_section">
         <div id="electronic_main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <h1 class="fashion_taital">Minuman</h1>
                     <div class="fashion_section_2">
                        <div class="row">
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Kopi Kapal Api Mix</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Kapal Api Mix'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/kapalapimix.jpg"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Kapal Api Mix'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Kopi Kapal Api Susu</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Kapal Api Susu'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/kapalapisusu.jfif"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Kapal Api Susu'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Kopi Kapal Api Spesial</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Kapal Api Spesial'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/kopikapalapispesial.webp"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Kapal Api Spesial'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Nescafe Classic</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Nescafe Classic'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/nescafeclass.webp"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Nescafe Classic'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Torabika Cappucino</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Torabika coppucino'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/torabikacapp.jfif"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Torabika coppucino'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Luwak White Coffee</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Luwak White Coffe'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/luwakwhitecoff.png"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Luwak White Coffe'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <h1 class="fashion_taital">Minuman</h1>
                     <div class="fashion_section_2">
                        <div class="row">
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Energen</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Energen'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/energen.jfif"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Energen'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Energen Kacang Hijau</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Energen Kacang Hijau'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/energenkacang.jpg"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Energen Kacang Hijau'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Choco Drink</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Choco Drink'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/chocodrink.webp"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Choco Drink'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Max Tea Tarik</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Maxtea Tarikk'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/maxteataraik.jpg"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Maxtea Tarikk'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Indomilk</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Indomilk'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/indomilk.jpg"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Indomilk'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Susu Putih</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Susu Putih'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/susuputih.jpg"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Susu Putih'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <h1 class="fashion_taital">Minuman</h1>
                     <div class="fashion_section_2">
                        <div class="row">
                           
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Frisian Flag Jahe</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Frisian Flag Jahe'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/frijahe.jpg"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Frisian Flag Jahe'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Teh Sari Wangi</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Teh Sari Wangi'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/sariwangi.jpg"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Teh Sari Wangi'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">Nutrisari</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Nutrisari'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/nutrisari.webp"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Nutrisari'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text">JasJus</h4>
                                 <p class="price_text">
                                 <%
  
   try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT harga_jual FROM tblbarang Where nama_barang = 'Jas Jus'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("harga_jual");

         // Tampilkan data ke dalam JSP
         out.println("Harga: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                 </p>
                                 <div class="electronic_img"><img src="images/minuman/jasjus.png"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="http://wa.me/6282316653219">Buy Now</a></div>
                                    <div class="seemore_bt">
                                    <%
                                            try {
      // Mendapatkan koneksi ke database PgAdmin
      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/warung", "dika1", "dika1234");

      // Membuat pernyataan SQL untuk mengambil satu data dari tabel
      stmt = conn.createStatement();
      String query = "SELECT jumlah_barang FROM tblbarang Where nama_barang = 'Jas Jus'";

      // Mengeksekusi pernyataan SQL dan mendapatkan hasilnya
      rs = stmt.executeQuery(query);

      // Memproses hasil query
      if (rs.next()) {
         // Ambil nilai kolom yang diinginkan dari hasil query
         String data = rs.getString("jumlah_barang");

         // Tampilkan data ke dalam JSP
         out.println("Stok: " + data);
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Menutup objek ResultSet, Statement, dan Connection
      if (rs != null) {
         rs.close();
      }
      if (stmt != null) {
         stmt.close();
      }
      if (conn != null) {
         conn.close();
      }
   }
%>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#electronic_main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#electronic_main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
            </a>
         </div>
      </div>
      <!-- electronic section end -->
      <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
            <div class="footer_logo"><a href="http://asramaipbekasari.site/"><img src="images/Logoekasar1i.png"></a><p>Kunjungi Website Asrama</p></div>
            <h1 class="banner_taital">Terima Kasih <br>Selamat Datang Kembali</h1>
            <div class="footer_menu">
               <ul>

                  <li><a href="#">Balik keatas</a></li>
                  
               </ul>
            </div>
            <div class="location_main">Help Line  Number : <a href="http://wa.me/6282316653219">+6282316653219</a></div>
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script>
         function openNav() {
           document.getElementById("mySidenav").style.width = "250px";
         }
         
         function closeNav() {
           document.getElementById("mySidenav").style.width = "0";
         }
      </script>
   </body>
</html>