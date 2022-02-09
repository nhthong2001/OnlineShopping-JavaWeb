package com.nht.onlineshopping.models;

import com.nht.onlineshopping.beans.Category;
import com.nht.onlineshopping.utils.DbUtils;
import org.sql2o.Connection;
import java.util.List;

public class CategoryModel {
    public static List<Category> findAll() {
        final String query = "SELECT * FROM categories";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query)
                    .executeAndFetch(Category.class);
        }
    }

    public static Category findById(int id) {
        final String query = "SELECT * FROM categories WHERE CatID = :id";

        try (Connection con = DbUtils.getConnection()) {
            List<Category> list =  con.createQuery(query)
                    .addParameter("id", id)
                    .executeAndFetch(Category.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }

    public static Integer count() {
        final String query = "SELECT count(CatID) FROM categories";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query).executeScalar(Integer.class);
        }
    }

    public static void add(Category c) {
        final String insertQuery = "INSERT INTO categories (CatID, CatName) VALUES (:CatID,:CatName)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(insertQuery)
                    .addParameter("CatID", c.getCatID())
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }
    }


    public static void edit(Category c) {
        final String updateQuery = "UPDATE categories SET  CatName = :catName WHERE CatID = :catId";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(updateQuery)
                    .addParameter("catId", c.getCatID())
                    .addParameter("catName", c.getCatName())
                    .executeUpdate();
        }
    }

    public static void delete(int catId) {
        final String delQuery = "DELETE FROM categories WHERE CatID = :catId; ";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(delQuery)
                    .addParameter("catId", catId)
                    .executeUpdate();
        }
    }
}
