package com.nht.onlineshopping.models;

import com.nht.onlineshopping.beans.Account;
import com.nht.onlineshopping.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class AccountModel {
    public static void add(Account account) {
        final String insertQuery = "INSERT INTO account (name, address, email, dob, point, level, username, password, isActive, sumBid, otp, isLock) VALUES (:name,:address,:email,:dob,:point,:level,:username,:password,:isActive,:sumBid,:otp,:isLock)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(insertQuery)
                    .addParameter("name", account.getName())
                    .addParameter("address", account.getAddress())
                    .addParameter("email", account.getEmail())
                    .addParameter("dob", account.getDob())
                    .addParameter("point", account.getPoint())
                    .addParameter("level", account.getLevel())
                    .addParameter("username", account.getUsername())
                    .addParameter("password", account.getPassword())
                    .addParameter("isActive", account.getIsActive())
                    .addParameter("sumBid", account.getSumBid())
                    .addParameter("otp", account.getOtp())
                    .addParameter("isLock", account.getIsLock())
                    .executeUpdate();
        }
    }
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
