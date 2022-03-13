package com.nht.onlineshopping.beans;

public class CategoryNext {
    private int CatID;
    private int CatIDNext;
    private String CatNextName;

    public CategoryNext() {
    }

    public CategoryNext(int catID, int catIDNext, String catNextName) {
        CatID = catID;
        CatIDNext = catIDNext;
        CatNextName = catNextName;
    }

    public int getCatID() {
        return CatID;
    }

    public int getCatIDNext() {
        return CatIDNext;
    }

    public String getCatNextName() {
        return CatNextName;
    }
}
