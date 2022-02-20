package com.nht.onlineshopping.beans;

import java.sql.Date;

public class Account {
    String name, address, email, level, username, password;
    int point, sumBid, otp;
    boolean isActive, isLock;
    Date dob;

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }

    public String getLevel() {
        return level;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public int getPoint() {
        return point;
    }

    public boolean getIsActive() {
        return isActive;
    }

    public int getSumBid() {
        return sumBid;
    }

    public int getOtp() {
        return otp;
    }

    public boolean getIsLock() {
        return isLock;
    }

    public Date getDob() {
        return dob;
    }
}
