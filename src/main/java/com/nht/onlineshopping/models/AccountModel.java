package com.nht.onlineshopping.models;

import com.nht.onlineshopping.beans.Account;
import com.nht.onlineshopping.beans.Category;
import com.nht.onlineshopping.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class AccountModel {
    public static Account findByUsername(String username) {
        final String query = "SELECT * FROM account WHERE username = :username";

        try (Connection con = DbUtils.getConnection()) {
            List<Account> list =  con.createQuery(query)
                    .addParameter("username", username)
                    .executeAndFetch(Account.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }
}
