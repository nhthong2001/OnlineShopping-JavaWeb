package com.nht.onlineshopping.models;

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
}
