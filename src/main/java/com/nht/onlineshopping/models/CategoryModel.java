package com.nht.onlineshopping.models;

import com.nht.onlineshopping.beans.Category;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

public class CategoryModel {
    public static List<Category> findAll() {
        Sql2o sql2o = new Sql2o("jdbc:mysql://localhost:3306/onlineshoppingdb", "root", "");
        final String query = "SELECT * FROM categories";

        try (Connection con = sql2o.open()) {
            return con.createQuery(query)
                    .executeAndFetch(Category.class);
        }
    }

    public static Integer count() {
        Sql2o sql2o = new Sql2o("jdbc:mysql://localhost:3306/onlineshoppingdb", "root", "");
        final String query = "SELECT count(CatID) FROM categories";

        try (Connection con = sql2o.open()) {
            return con.createQuery(query).executeScalar(Integer.class);
        }
    }

    public static void add(Category c) {
        final String insertQuery = "INSERT INTO categories (CatID, CatName) VALUES (:CatID,:CatName)";
        Sql2o sql2o = new Sql2o("jdbc:mysql://localhost:3306/onlineshoppingdb", "root", "");
        try (Connection con = sql2o.beginTransaction()) {
            con.createQuery(insertQuery)
                    .addParameter("CatID", c.getCatID())
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
            con.commit();
        }
    }
}
