package com.nht.onlineshopping.models;

import com.nht.onlineshopping.beans.Category;
import com.nht.onlineshopping.beans.Product;
import com.nht.onlineshopping.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class ProductModel {
    public static List<Product> findByCatIDNext(int catIdNext) {
        final String query = "SELECT * FROM products WHERE CatIDNext = :id";

        try (Connection con = DbUtils.getConnection()) {
            return  con.createQuery(query)
                    .addParameter("id", catIdNext)
                    .executeAndFetch(Product.class);
        }
    }

    public static Product findById(int proId) {
        final String query = "SELECT * FROM products WHERE ProID = :id";

        try (Connection con = DbUtils.getConnection()) {
            List<Product> list =  con.createQuery(query)
                    .addParameter("id", proId)
                    .executeAndFetch(Product.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }

    public static List<Product> findByInfo(String info) {
        final String query = "SELECT * FROM products WHERE MATCH(ProName) AGAINST(:info)";

        try (Connection con = DbUtils.getConnection()) {
            return  con.createQuery(query)
                    .addParameter("info", info)
                    .executeAndFetch(Product.class);
        }
    }
}
