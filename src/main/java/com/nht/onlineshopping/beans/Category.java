package com.nht.onlineshopping.beans;

public class Category {
    int CatID;
    String CatName;

    public Category() {
    }

    public Category(int catID, String catName) {
        CatID = catID;
        CatName = catName;
    }

    public int getCatID() {
        return CatID;
    }

    public String getCatName() {
        return CatName;
    }
}
