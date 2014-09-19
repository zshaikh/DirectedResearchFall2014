package com.facebook.widget;

public enum FacebookDialog$ShareDialogFeature implements FacebookDialog$DialogFeature
{
    SHARE_DIALOG(20130618);
    
    private int minVersion;
    
    private FacebookDialog$ShareDialogFeature(final int minVersion) {
        this.minVersion = minVersion;
    }
    
    @Override
    public final String getAction() {
        return "com.facebook.platform.action.request.FEED_DIALOG";
    }
    
    @Override
    public final int getMinVersion() {
        return this.minVersion;
    }
}
