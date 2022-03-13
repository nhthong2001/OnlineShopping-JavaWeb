package com.nht.onlineshopping.beans;

import java.time.LocalDateTime;

public class Product {
    private int ProID, BidderCount, CatIDNext;
    private String ProName, Bidder, Description, Seller;
    private Long PriceCurrent, PriceWin, stepPrice, firstPrice;
    private LocalDateTime DateStart, DateEnd;
    private boolean renewal, isVerify, emailed;

    public Product() {
    }

    public Product(int proID, int bidderCount, int catIDNext, String proName, String bidder, String description, String seller, Long priceCurrent, Long priceWin, Long stepPrice, Long firstPrice, LocalDateTime dateStart, LocalDateTime dateEnd, boolean renewal, boolean isVerify, boolean emailed) {
        ProID = proID;
        BidderCount = bidderCount;
        CatIDNext = catIDNext;
        ProName = proName;
        Bidder = bidder;
        Description = description;
        Seller = seller;
        PriceCurrent = priceCurrent;
        PriceWin = priceWin;
        this.stepPrice = stepPrice;
        this.firstPrice = firstPrice;
        DateStart = dateStart;
        DateEnd = dateEnd;
        this.renewal = renewal;
        this.isVerify = isVerify;
        this.emailed = emailed;
    }

    public void setProID(int proID) {
        ProID = proID;
    }

    public void setBidderCount(int bidderCount) {
        BidderCount = bidderCount;
    }

    public void setCatIDNext(int catIDNext) {
        CatIDNext = catIDNext;
    }

    public void setProName(String proName) {
        ProName = proName;
    }

    public void setBidder(String bidder) {
        Bidder = bidder;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public void setSeller(String seller) {
        Seller = seller;
    }

    public void setPriceCurrent(Long priceCurrent) {
        PriceCurrent = priceCurrent;
    }

    public void setPriceWin(Long priceWin) {
        PriceWin = priceWin;
    }

    public void setStepPrice(Long stepPrice) {
        this.stepPrice = stepPrice;
    }

    public void setFirstPrice(Long firstPrice) {
        this.firstPrice = firstPrice;
    }

    public void setDateStart(LocalDateTime dateStart) {
        DateStart = dateStart;
    }

    public void setDateEnd(LocalDateTime dateEnd) {
        DateEnd = dateEnd;
    }

    public void setRenewal(boolean renewal) {
        this.renewal = renewal;
    }

    public void setVerify(boolean verify) {
        isVerify = verify;
    }

    public void setEmailed(boolean emailed) {
        this.emailed = emailed;
    }

    public int getProID() {
        return ProID;
    }

    public int getBidderCount() {
        return BidderCount;
    }

    public int getCatIDNext() {
        return CatIDNext;
    }

    public String getProName() {
        return ProName;
    }

    public String getBidder() {
        return Bidder;
    }

    public String getDescription() {
        return Description;
    }

    public String getSeller() {
        return Seller;
    }

    public Long getPriceCurrent() {
        return PriceCurrent;
    }

    public Long getPriceWin() {
        return PriceWin;
    }

    public Long getStepPrice() {
        return stepPrice;
    }

    public Long getFirstPrice() {
        return firstPrice;
    }

    public LocalDateTime getDateStart() {
        return DateStart;
    }

    public LocalDateTime getDateEnd() {
        return DateEnd;
    }

    public boolean isRenewal() {
        return renewal;
    }

    public boolean isVerify() {
        return isVerify;
    }

    public boolean isEmailed() {
        return emailed;
    }
}
