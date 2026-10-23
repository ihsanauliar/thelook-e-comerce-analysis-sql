#TheLook E-Commerce Data Analysis (SQL)

## Project Overview
Proyek ini merupakan analisis data end-to-end pada dataset e-commerce berskala besar (**TheLook E-Commerce**) menggunakan **Google BigQuery SQL**. Tujuan dari proyek ini adalah mengekstrak *actionable insights* terkait perilaku pengguna, performa penjualan produk, dan efisiensi operasional pengiriman.

## 🎯 Business Questions Answered
Melalui serangkaian query SQL dalam repositori ini, saya menjawab beberapa pertanyaan bisnis utama:
1. **Sales & Product Performance:Kategori produk apa yang menghasilkan total pendapatan (*revenue*) tertinggi?
2. **User Demographics:Apa Top 10 negara dengan jumlah pengguna (*user base*) terbesar?
3. **Order Fulfillment:Bagaimana distribusi pesanan berdasarkan statusnya (Complete, Shipped, Processing, dll)?
4. **Customer Behavior:Berapa rata-rata item per pesanan, dan produk spesifik apa yang paling sering dibeli?

## SQL Skills Demonstrated
Proyek ini mendemonstrasikan penggunaan teknik manipulasi dan analisis data menggunakan SQL, meliputi:
* **Data Aggregation:COUNT,SUM, AVG, MIN, MAX
* **Data Grouping & Filtering:GROUP BY, HAVING, WHERE, IN, BETWEEN
* **Multi-table Joins: Menggabungkan tabel orders, order_items, dan products menggunakan JOIN
* **Data Formatting & Distinct Values:ROUND(), COUNT(DISTINCT)
* **Subqueries:penggunaan subquery dasar untuk *conditional filtering*.

## Dataset Source
Dataset yang digunakan adalah data publik dari Google BigQuery: `bigquery-public-data.thelook_ecommerce`. Dataset ini mencakup jutaan baris data tiruan (mock data) dari platform e-commerce fiktif, yang terdiri dari tabel:
* `users`
* `orders`
* `order_items`
* `products`
