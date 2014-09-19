package com.fusepowered.util;

public class DlcContent
{
    private boolean autoDownload;
    private int bytes;
    private int contentId;
    private String downloadPath;
    private int id;
    private String md5;
    private int parentId;
    private String productId;
    private boolean purchased;
    
    public DlcContent() {
        super();
    }
    
    public DlcContent(final int id, final int parentId, final int contentId, final String downloadPath, final String md5, final int bytes, final boolean purchased, final String productId, final boolean autoDownload) {
        super();
        this.id = id;
        this.parentId = parentId;
        this.contentId = contentId;
        this.downloadPath = downloadPath;
        this.md5 = md5;
        this.bytes = bytes;
        this.purchased = purchased;
        this.productId = productId;
        this.autoDownload = autoDownload;
    }
    
    public int getBytes() {
        return this.bytes;
    }
    
    public int getContentId() {
        return this.contentId;
    }
    
    public String getDownloadPath() {
        return this.downloadPath;
    }
    
    public int getId() {
        return this.id;
    }
    
    public String getMd5() {
        return this.md5;
    }
    
    public int getParentId() {
        return this.parentId;
    }
    
    public String getProductId() {
        return this.productId;
    }
    
    public boolean isAutoDownload() {
        return this.autoDownload;
    }
    
    public boolean isPurchased() {
        return this.purchased;
    }
    
    public void setAutoDownload(final boolean autoDownload) {
        this.autoDownload = autoDownload;
    }
    
    public void setBytes(final int bytes) {
        this.bytes = bytes;
    }
    
    public void setContentId(final int contentId) {
        this.contentId = contentId;
    }
    
    public void setDownloadPath(final String downloadPath) {
        this.downloadPath = downloadPath;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setMd5(final String md5) {
        this.md5 = md5;
    }
    
    public void setParentId(final int parentId) {
        this.parentId = parentId;
    }
    
    public void setProductId(final String productId) {
        this.productId = productId;
    }
    
    public void setPurchased(final boolean purchased) {
        this.purchased = purchased;
    }
    
    @Override
    public String toString() {
        return "DlcContent [id=" + this.id + ", parentId=" + this.parentId + ", contentId=" + this.contentId + ", downloadPath=" + this.downloadPath + ", md5=" + this.md5 + ", bytes=" + this.bytes + ", purchased=" + this.purchased + ", productId=" + this.productId + ", autoDownload=" + this.autoDownload + ']';
    }
}
