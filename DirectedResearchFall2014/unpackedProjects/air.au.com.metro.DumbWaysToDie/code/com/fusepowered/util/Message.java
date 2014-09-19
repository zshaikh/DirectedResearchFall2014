package com.fusepowered.util;

public class Message
{
    private String action;
    private String actionTitle;
    private String body;
    private boolean displayed;
    private int id;
    private boolean isClicked;
    private boolean isUpgrade;
    private int isUrl;
    private int mandatory;
    private int max_views;
    private int showOnView;
    private int sticky;
    private String title;
    
    public Message() {
        super();
    }
    
    public Message(final int id, final int sticky, final int max_views, final int showOnView, final int isUrl, final int mandatory, final String title, final String body, final String action, final String actionTitle, final boolean displayed, final boolean isClicked, final boolean isUpgrade) {
        super();
        this.id = id;
        this.sticky = sticky;
        this.max_views = max_views;
        this.showOnView = showOnView;
        this.isUrl = isUrl;
        this.mandatory = mandatory;
        this.title = title;
        this.body = body;
        this.action = action;
        this.actionTitle = actionTitle;
        this.displayed = displayed;
        this.isClicked = isClicked;
        this.isUpgrade = isUpgrade;
    }
    
    public String getAction() {
        return this.action;
    }
    
    public String getActionTitle() {
        return this.actionTitle;
    }
    
    public String getBody() {
        return this.body;
    }
    
    public int getId() {
        return this.id;
    }
    
    public boolean getIsUpgrade() {
        return this.isUpgrade;
    }
    
    public int getIsUrl() {
        return this.isUrl;
    }
    
    public int getMandatory() {
        return this.mandatory;
    }
    
    public int getMax_views() {
        return this.max_views;
    }
    
    public int getShowOnView() {
        return this.showOnView;
    }
    
    public int getSticky() {
        return this.sticky;
    }
    
    public String getTitle() {
        return this.title;
    }
    
    public boolean isClicked() {
        return this.isClicked;
    }
    
    public boolean isDisplayed() {
        return this.displayed;
    }
    
    public void setAction(final String action) {
        this.action = action;
    }
    
    public void setActionTitle(final String actionTitle) {
        this.actionTitle = actionTitle;
    }
    
    public void setActionTtitle(final String actionTitle) {
        this.actionTitle = actionTitle;
    }
    
    public void setBody(final String body) {
        this.body = body;
    }
    
    public void setClicked(final boolean isClicked) {
        this.isClicked = isClicked;
    }
    
    public void setDisplayed(final boolean displayed) {
        this.displayed = displayed;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setIsUpgrade(final boolean isUpgrade) {
        this.isUpgrade = isUpgrade;
    }
    
    public void setIsUrl(final int isUrl) {
        this.isUrl = isUrl;
    }
    
    public void setMandatory(final int mandatory) {
        this.mandatory = mandatory;
    }
    
    public void setMax_views(final int max_views) {
        this.max_views = max_views;
    }
    
    public void setShowOnView(final int showOnView) {
        this.showOnView = showOnView;
    }
    
    public void setSticky(final int sticky) {
        this.sticky = sticky;
    }
    
    public void setTitle(final String title) {
        this.title = title;
    }
    
    @Override
    public String toString() {
        return "Message [id=" + this.id + ", sticky=" + this.sticky + ", max_views=" + this.max_views + ", showOnView=" + this.showOnView + ", isUrl=" + this.isUrl + ", mandatory=" + this.mandatory + ", title=" + this.title + ", body=" + this.body + ", action=" + this.action + ", actionTitle=" + this.actionTitle + ", displayed=" + this.displayed + ", isClicked=" + this.isClicked + ']';
    }
}
