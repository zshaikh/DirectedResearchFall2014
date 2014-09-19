package com.fusepowered.util;

import java.util.*;

public class DLC
{
    private int bytes;
    private int contentId;
    private ArrayList<DlcContent> dlcContents;
    private int id;
    private int numFiles;
    private String productId;
    private boolean update;
    
    public DLC() {
        super();
    }
    
    public DLC(final int id, final int numFiles, final boolean update, final int bytes, final int contentId, final String productId, final ArrayList<DlcContent> dlcContents) {
        super();
        this.id = id;
        this.numFiles = numFiles;
        this.update = update;
        this.bytes = bytes;
        this.contentId = contentId;
        this.productId = productId;
        this.dlcContents = dlcContents;
    }
    
    public int getBytes() {
        return this.bytes;
    }
    
    public int getContentId() {
        return this.contentId;
    }
    
    public ArrayList<DlcContent> getDlcContents() {
        return this.dlcContents;
    }
    
    public int getId() {
        return this.id;
    }
    
    public int getNumFiles() {
        return this.numFiles;
    }
    
    public String getProductId() {
        return this.productId;
    }
    
    public boolean isUpdate() {
        return this.update;
    }
    
    public void setBytes(final int bytes) {
        this.bytes = bytes;
    }
    
    public void setContentId(final int contentId) {
        this.contentId = contentId;
    }
    
    public void setDlcContents(final ArrayList<DlcContent> dlcContents) {
        this.dlcContents = dlcContents;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setNumFiles(final int numFiles) {
        this.numFiles = numFiles;
    }
    
    public void setProductId(final String productId) {
        this.productId = productId;
    }
    
    public void setUpdate(final boolean update) {
        this.update = update;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder("DLC [id=").append(this.id).append(", numFiles=").append(this.numFiles).append(", update=").append(this.update).append(", bytes=").append(this.bytes).append(", contentId=").append(this.contentId).append(", productId=").append(this.productId).append(", dlcContents=[");
        final Iterator<DlcContent> iterator = this.dlcContents.iterator();
        while (iterator.hasNext()) {
            append.append(iterator.next().toString());
        }
        append.append("]]");
        return append.toString();
    }
}
