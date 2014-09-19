package com.fusepowered.util;

import com.fusepowered.fuseapi.*;

public class FuseServer
{
    public static String getAdServerHostUrl() {
        switch (Constants.FUSE_SERVER) {
            default: {
                return "";
            }
            case STAGING: {
                return "http://ads.staging.fusepowered.com/analytics.php?";
            }
            case PROD: {
                return "http://ads.fusepowered.com/analytics.php?";
            }
        }
    }
    
    public static String getAnalyticsHostUrl() {
        switch (Constants.FUSE_SERVER) {
            default: {
                return "";
            }
            case STAGING: {
                return "http://api.staging.fusepowered.com/analytics.php?";
            }
            case PROD: {
                return "http://analytics.fusepowered.com/analytics.php?";
            }
        }
    }
    
    public static String getDataServerHostUrl() {
        switch (Constants.FUSE_SERVER) {
            default: {
                return "";
            }
            case STAGING: {
                return "http://data.staging.fusepowered.com/analytics.php?";
            }
            case PROD: {
                return "http://data.fusepowered.com/analytics.php?";
            }
        }
    }
    
    public static String getMoreGamesCloseImage() {
        switch (Constants.FUSE_SERVER) {
            default: {
                return "";
            }
            case STAGING: {
                return "http://games.staging.fusepowered.com/android/images/btn_iphone_l_close.png";
            }
            case PROD: {
                return "http://games.fusepowered.com/android/images/btn_iphone_l_close.png";
            }
        }
    }
    
    public static String getMoreGamesHostUrl() {
        switch (Constants.FUSE_SERVER) {
            default: {
                return "";
            }
            case STAGING: {
                return "http://games.staging.fusepowered.com/";
            }
            case PROD: {
                return "http://games.fusepowered.com/";
            }
        }
    }
    
    public static String getScarfaceHostUrl() {
        switch (Constants.FUSE_SERVER) {
            default: {
                return "";
            }
            case STAGING: {
                return "http://data.staging.fusepowered.com/analytics.php?";
            }
            case PROD: {
                return "http://scarface.fusepowered.com/analytics.php?";
            }
        }
    }
    
    public static String getServerHostUrl() {
        switch (Constants.FUSE_SERVER) {
            default: {
                return "";
            }
            case STAGING: {
                return "http://api.staging.fusepowered.com/analytics.php?";
            }
            case PROD: {
                return "http://api.fusepowered.com/analytics.php?";
            }
        }
    }
    
    public enum SERVER_NAMES
    {
        PROD, 
        STAGING;
    }
}
