package com.nht.onlineshopping.models;

import com.nht.onlineshopping.beans.Category;
import com.nht.onlineshopping.beans.CategoryNext;
import com.nht.onlineshopping.utils.DbUtils;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

public class CategoryNextModel {
    public static List<CategoryNext> findAll() {
        Sql2o sql2o = new Sql2o("jdbc:mysql://localhost:3306/onlineshoppingdb", "root", "");
        final String query = "SELECT * FROM categoriesnext";

        try (Connection con = sql2o.open()) {
            return con.createQuery(query)
                    .executeAndFetch(CategoryNext.class);
        }
    }

    public static int count() {
        final String query = "SELECT count(*) FROM categoriesnext";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query).executeScalar(Integer.class);
        }
    }

    public static void add(CategoryNext cn) {
        final String insertQuery = "INSERT INTO categoriesnext (CatIDNext, CatNextName, CatID) VALUES (:catidnext,:catnextname,:catid)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(insertQuery)
                    .addParameter("catidnext", cn.getCatIDNext())
                    .addParameter("catnextname", cn.getCatNextName())
                    .addParameter("catid", cn.getCatID())
                    .executeUpdate();
        }
    }

    public static CategoryNext findById(int id) {
        final String query = "SELECT * FROM categoriesnext WHERE CatIDNext = :id";

        try (Connection con = DbUtils.getConnection()) {
            List<CategoryNext> list =  con.createQuery(query)
                    .addParameter("id", id)
                    .executeAndFetch(CategoryNext.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }

    public static void edit(CategoryNext cn) {
        final String updateQuery = "UPDATE categoriesnext SET  CatNextName = :catnextname, CatID = :catid WHERE CatIDNext = :catidnext";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(updateQuery)
                    .addParameter("catid", cn.getCatID())
                    .addParameter("catnextname", cn.getCatNextName())
                    .addParameter("catidnext", cn.getCatIDNext())
                    .executeUpdate();
        }
    }
}
