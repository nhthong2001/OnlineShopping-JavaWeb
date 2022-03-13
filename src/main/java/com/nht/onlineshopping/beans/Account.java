package com.nht.onlineshopping.beans;

import java.time.LocalDate;

public class Account {
    private String name, address, email, level, username, password;
    private int point, sumBid, otp;
    private boolean isActive, isLock;
    private LocalDate dob;

    public Account() {
    }

    public Account(String name, String address, String email, String level, String username, String password, int point, int sumBid, int otp, boolean isActive, boolean isLock, LocalDate dob) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.level = level;
        this.username = username;
        this.password = password;
        this.point = point;
        this.sumBid = sumBid;
        this.otp = otp;
        this.isActive = isActive;
        this.isLock = isLock;
        this.dob = dob;
    }

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

    public LocalDate getDob() {
        return dob;
    }
}
