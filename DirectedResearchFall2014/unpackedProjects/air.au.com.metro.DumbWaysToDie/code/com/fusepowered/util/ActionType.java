package com.fusepowered.util;

public enum ActionType
{
    ACTION_ACCEPT_FRIEND(39), 
    ACTION_ADD_FRIEND(37), 
    ACTION_AD_CLICK(4), 
    ACTION_AD_DISPLAY(3), 
    ACTION_ANALYTICS(5), 
    ACTION_DELETE_MESSAGE(45), 
    ACTION_DELETE_SIGN_POST(51), 
    ACTION_FETCH_DLC_LIST(27), 
    ACTION_FETCH_SERVER_UTC_TIME(28), 
    ACTION_FUSEAD_CLICK(32), 
    ACTION_FUSEAD_VIEW(31), 
    ACTION_FUSE_AD_SKIP(56), 
    ACTION_FUSE_REGISTER_GCM(57), 
    ACTION_GAME_CRASH(6), 
    ACTION_GENDER_UPDATE(33), 
    ACTION_GET_AD(30), 
    ACTION_GET_ENEMIES_LIST(46), 
    ACTION_GET_FRIENDS_LIST(36), 
    ACTION_GET_GAME_DATA(10), 
    ACTION_GET_MAIL(53), 
    ACTION_GET_MESSAGE_LIST(44), 
    ACTION_GET_SIGN_POSTS(50), 
    ACTION_GET_USER_TRANSACTION_LOG(48), 
    ACTION_INAPP_PURCHASE(9), 
    ACTION_INCENTIVES_AD_CLICK(21), 
    ACTION_INCENTIVES_AD_VIEW(20), 
    ACTION_INCENTIVES_VIEW(19), 
    ACTION_INCENTIVE_ACTION_COMPLETE(22), 
    ACTION_LOCATION(12), 
    ACTION_LOG_USER_TRANSACTION(47), 
    ACTION_MARK_MAIL_AS_READ(54), 
    ACTION_MIGRATE_FRIENDS(35), 
    ACTION_MORE_GAMES_AD_CLICK(18), 
    ACTION_MORE_GAMES_AD_VIEW(17), 
    ACTION_MORE_GAMES_VIEW(16), 
    ACTION_NOTIFICATION_CLICK(8), 
    ACTION_NOTIFICATION_VIEW(7), 
    ACTION_POST_MESSAGE(43), 
    ACTION_PUSH_NOTIFICATION_VIEW(26), 
    ACTION_REGISTER_FRIENDS_LIST(34), 
    ACTION_REGISTER_ID(2), 
    ACTION_REGISTER_RESOURCE(55), 
    ACTION_REJECT_FRIEND(40), 
    ACTION_REMOVE_FRIEND(38), 
    ACTION_RESUME_SESSION(25), 
    ACTION_REWARD_REDEMPTION(15), 
    ACTION_SEND_MAIL(52), 
    ACTION_SEND_PUSH_LIST(42), 
    ACTION_SEND_PUSH_USER(41), 
    ACTION_SESSION_END(1), 
    ACTION_SESSION_START(0), 
    ACTION_SET_GAME_DATA(11), 
    ACTION_SET_SIGN_POST(49), 
    ACTION_SPLASH_CLICK(14), 
    ACTION_SPLASH_VIEW(13), 
    ACTION_SUSPEND_SESSION(24), 
    ACTION_TOKEN_RECEIVED(23), 
    ACTION_USER_OPT_OUT(29);
    
    private int messageCode;
    
    private ActionType(final int messageCode) {
        this.messageCode = messageCode;
    }
    
    public static ActionType getActionTypeByCode(final int n) {
        switch (n) {
            default: {
                return ActionType.ACTION_SESSION_START;
            }
            case 0: {
                return ActionType.ACTION_SESSION_START;
            }
            case 1: {
                return ActionType.ACTION_SESSION_END;
            }
            case 2: {
                return ActionType.ACTION_REGISTER_ID;
            }
            case 3: {
                return ActionType.ACTION_AD_DISPLAY;
            }
            case 4: {
                return ActionType.ACTION_AD_CLICK;
            }
            case 5: {
                return ActionType.ACTION_ANALYTICS;
            }
            case 6: {
                return ActionType.ACTION_GAME_CRASH;
            }
            case 7: {
                return ActionType.ACTION_NOTIFICATION_VIEW;
            }
            case 8: {
                return ActionType.ACTION_NOTIFICATION_CLICK;
            }
            case 9: {
                return ActionType.ACTION_INAPP_PURCHASE;
            }
            case 10: {
                return ActionType.ACTION_GET_GAME_DATA;
            }
            case 11: {
                return ActionType.ACTION_SET_GAME_DATA;
            }
            case 12: {
                return ActionType.ACTION_LOCATION;
            }
            case 13: {
                return ActionType.ACTION_SPLASH_VIEW;
            }
            case 14: {
                return ActionType.ACTION_SPLASH_CLICK;
            }
            case 15: {
                return ActionType.ACTION_REWARD_REDEMPTION;
            }
            case 16: {
                return ActionType.ACTION_MORE_GAMES_VIEW;
            }
            case 17: {
                return ActionType.ACTION_MORE_GAMES_AD_VIEW;
            }
            case 18: {
                return ActionType.ACTION_MORE_GAMES_AD_CLICK;
            }
            case 19: {
                return ActionType.ACTION_INCENTIVES_VIEW;
            }
            case 20: {
                return ActionType.ACTION_INCENTIVES_AD_VIEW;
            }
            case 21: {
                return ActionType.ACTION_INCENTIVES_AD_CLICK;
            }
            case 22: {
                return ActionType.ACTION_INCENTIVE_ACTION_COMPLETE;
            }
            case 23: {
                return ActionType.ACTION_TOKEN_RECEIVED;
            }
            case 24: {
                return ActionType.ACTION_SUSPEND_SESSION;
            }
            case 25: {
                return ActionType.ACTION_RESUME_SESSION;
            }
            case 26: {
                return ActionType.ACTION_PUSH_NOTIFICATION_VIEW;
            }
            case 27: {
                return ActionType.ACTION_FETCH_DLC_LIST;
            }
            case 28: {
                return ActionType.ACTION_FETCH_SERVER_UTC_TIME;
            }
            case 29: {
                return ActionType.ACTION_USER_OPT_OUT;
            }
            case 30: {
                return ActionType.ACTION_GET_AD;
            }
            case 31: {
                return ActionType.ACTION_FUSEAD_VIEW;
            }
            case 32: {
                return ActionType.ACTION_FUSEAD_CLICK;
            }
            case 33: {
                return ActionType.ACTION_GENDER_UPDATE;
            }
            case 34: {
                return ActionType.ACTION_REGISTER_FRIENDS_LIST;
            }
            case 35: {
                return ActionType.ACTION_MIGRATE_FRIENDS;
            }
            case 36: {
                return ActionType.ACTION_GET_FRIENDS_LIST;
            }
            case 37: {
                return ActionType.ACTION_ADD_FRIEND;
            }
            case 38: {
                return ActionType.ACTION_REMOVE_FRIEND;
            }
            case 39: {
                return ActionType.ACTION_ACCEPT_FRIEND;
            }
            case 40: {
                return ActionType.ACTION_REJECT_FRIEND;
            }
            case 41: {
                return ActionType.ACTION_SEND_PUSH_USER;
            }
            case 42: {
                return ActionType.ACTION_SEND_PUSH_LIST;
            }
            case 43: {
                return ActionType.ACTION_POST_MESSAGE;
            }
            case 44: {
                return ActionType.ACTION_GET_MESSAGE_LIST;
            }
            case 45: {
                return ActionType.ACTION_DELETE_MESSAGE;
            }
            case 46: {
                return ActionType.ACTION_GET_ENEMIES_LIST;
            }
            case 47: {
                return ActionType.ACTION_LOG_USER_TRANSACTION;
            }
            case 48: {
                return ActionType.ACTION_GET_USER_TRANSACTION_LOG;
            }
            case 49: {
                return ActionType.ACTION_SET_SIGN_POST;
            }
            case 50: {
                return ActionType.ACTION_GET_SIGN_POSTS;
            }
            case 51: {
                return ActionType.ACTION_DELETE_SIGN_POST;
            }
            case 52: {
                return ActionType.ACTION_SEND_MAIL;
            }
            case 53: {
                return ActionType.ACTION_GET_MAIL;
            }
            case 54: {
                return ActionType.ACTION_MARK_MAIL_AS_READ;
            }
            case 55: {
                return ActionType.ACTION_REGISTER_RESOURCE;
            }
            case 56: {
                return ActionType.ACTION_FUSE_AD_SKIP;
            }
            case 57: {
                return ActionType.ACTION_FUSE_REGISTER_GCM;
            }
        }
    }
    
    public static String getServerUrlForActionCode(final ActionType actionType) {
        if (actionType == null) {
            return FuseServer.getServerHostUrl();
        }
        switch (actionType) {
            default: {
                return FuseServer.getServerHostUrl();
            }
            case ACTION_ANALYTICS: {
                return FuseServer.getAnalyticsHostUrl();
            }
            case ACTION_GET_AD: {
                return FuseServer.getAdServerHostUrl();
            }
            case ACTION_GET_ENEMIES_LIST:
            case ACTION_GET_USER_TRANSACTION_LOG:
            case ACTION_LOG_USER_TRANSACTION: {
                return FuseServer.getScarfaceHostUrl();
            }
            case ACTION_GET_GAME_DATA:
            case ACTION_SET_GAME_DATA:
            case ACTION_POST_MESSAGE:
            case ACTION_DELETE_MESSAGE:
            case ACTION_GET_MAIL:
            case ACTION_GET_MESSAGE_LIST:
            case ACTION_SEND_MAIL:
            case ACTION_MARK_MAIL_AS_READ:
            case ACTION_GET_SIGN_POSTS:
            case ACTION_SET_SIGN_POST:
            case ACTION_DELETE_SIGN_POST: {
                return FuseServer.getDataServerHostUrl();
            }
        }
    }
    
    public static boolean isDataAction(final ActionType actionType) {
        if (actionType == null) {
            return false;
        }
        switch (actionType) {
            default: {
                return false;
            }
            case ACTION_GET_GAME_DATA:
            case ACTION_SET_GAME_DATA:
            case ACTION_POST_MESSAGE:
            case ACTION_DELETE_MESSAGE:
            case ACTION_GET_ENEMIES_LIST:
            case ACTION_GET_USER_TRANSACTION_LOG:
            case ACTION_LOG_USER_TRANSACTION:
            case ACTION_GET_MAIL:
            case ACTION_GET_MESSAGE_LIST:
            case ACTION_SEND_MAIL:
            case ACTION_MARK_MAIL_AS_READ:
            case ACTION_GET_SIGN_POSTS:
            case ACTION_SET_SIGN_POST:
            case ACTION_DELETE_SIGN_POST: {
                return true;
            }
        }
    }
    
    public int getMessageCode() {
        return this.messageCode;
    }
    
    public void setMessageCode(final int messageCode) {
        this.messageCode = messageCode;
    }
}
