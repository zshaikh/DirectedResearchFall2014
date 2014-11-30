.class public final enum Lcom/fusepowered/util/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/util/ActionType$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_ACCEPT_FRIEND:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_ADD_FRIEND:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_AD_CLICK:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_AD_DISPLAY:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_DELETE_MESSAGE:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_DELETE_SIGN_POST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_FETCH_DLC_LIST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_FETCH_SERVER_UTC_TIME:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_FUSEAD_CLICK:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_FUSEAD_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_FUSE_AD_SKIP:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_FUSE_REGISTER_GCM:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GAME_CRASH:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GENDER_UPDATE:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_AD:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_ENEMIES_LIST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_MAIL:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_MESSAGE_LIST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_SIGN_POSTS:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_GET_USER_TRANSACTION_LOG:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_INAPP_PURCHASE:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_INCENTIVES_AD_CLICK:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_INCENTIVES_AD_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_INCENTIVES_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_INCENTIVE_ACTION_COMPLETE:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_LOCATION:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_LOG_USER_TRANSACTION:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_MARK_MAIL_AS_READ:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_MIGRATE_FRIENDS:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_MORE_GAMES_AD_CLICK:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_MORE_GAMES_AD_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_MORE_GAMES_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_NOTIFICATION_CLICK:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_POST_MESSAGE:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_PUSH_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_REGISTER_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_REGISTER_ID:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_REGISTER_RESOURCE:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_REJECT_FRIEND:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_REMOVE_FRIEND:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_RESUME_SESSION:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_REWARD_REDEMPTION:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SEND_MAIL:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SEND_PUSH_LIST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SEND_PUSH_USER:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SESSION_END:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SET_SIGN_POST:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SPLASH_CLICK:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SPLASH_VIEW:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_SUSPEND_SESSION:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_TOKEN_RECEIVED:Lcom/fusepowered/util/ActionType;

.field public static final enum ACTION_USER_OPT_OUT:Lcom/fusepowered/util/ActionType;


# instance fields
.field private messageCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SESSION_START"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    .line 6
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SESSION_END"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_END:Lcom/fusepowered/util/ActionType;

    .line 7
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_REGISTER_ID"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_ID:Lcom/fusepowered/util/ActionType;

    .line 8
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_AD_DISPLAY"

    invoke-direct {v0, v1, v7, v7}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_AD_DISPLAY:Lcom/fusepowered/util/ActionType;

    .line 9
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_AD_CLICK"

    invoke-direct {v0, v1, v8, v8}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_AD_CLICK:Lcom/fusepowered/util/ActionType;

    .line 10
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_ANALYTICS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    .line 11
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GAME_CRASH"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GAME_CRASH:Lcom/fusepowered/util/ActionType;

    .line 12
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_NOTIFICATION_VIEW"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    .line 13
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_NOTIFICATION_CLICK"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_CLICK:Lcom/fusepowered/util/ActionType;

    .line 14
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_INAPP_PURCHASE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INAPP_PURCHASE:Lcom/fusepowered/util/ActionType;

    .line 15
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_GAME_DATA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    .line 16
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SET_GAME_DATA"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    .line 17
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_LOCATION"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_LOCATION:Lcom/fusepowered/util/ActionType;

    .line 18
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SPLASH_VIEW"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SPLASH_VIEW:Lcom/fusepowered/util/ActionType;

    .line 19
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SPLASH_CLICK"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SPLASH_CLICK:Lcom/fusepowered/util/ActionType;

    .line 20
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_REWARD_REDEMPTION"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REWARD_REDEMPTION:Lcom/fusepowered/util/ActionType;

    .line 21
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_MORE_GAMES_VIEW"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_VIEW:Lcom/fusepowered/util/ActionType;

    .line 22
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_MORE_GAMES_AD_VIEW"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_AD_VIEW:Lcom/fusepowered/util/ActionType;

    .line 23
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_MORE_GAMES_AD_CLICK"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_AD_CLICK:Lcom/fusepowered/util/ActionType;

    .line 24
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_INCENTIVES_VIEW"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_VIEW:Lcom/fusepowered/util/ActionType;

    .line 25
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_INCENTIVES_AD_VIEW"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_AD_VIEW:Lcom/fusepowered/util/ActionType;

    .line 26
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_INCENTIVES_AD_CLICK"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_AD_CLICK:Lcom/fusepowered/util/ActionType;

    .line 27
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_INCENTIVE_ACTION_COMPLETE"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVE_ACTION_COMPLETE:Lcom/fusepowered/util/ActionType;

    .line 28
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_TOKEN_RECEIVED"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_TOKEN_RECEIVED:Lcom/fusepowered/util/ActionType;

    .line 29
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SUSPEND_SESSION"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SUSPEND_SESSION:Lcom/fusepowered/util/ActionType;

    .line 30
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_RESUME_SESSION"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_RESUME_SESSION:Lcom/fusepowered/util/ActionType;

    .line 31
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_PUSH_NOTIFICATION_VIEW"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_PUSH_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    .line 32
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_FETCH_DLC_LIST"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_DLC_LIST:Lcom/fusepowered/util/ActionType;

    .line 33
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_FETCH_SERVER_UTC_TIME"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_SERVER_UTC_TIME:Lcom/fusepowered/util/ActionType;

    .line 34
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_USER_OPT_OUT"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_USER_OPT_OUT:Lcom/fusepowered/util/ActionType;

    .line 35
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_AD"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_AD:Lcom/fusepowered/util/ActionType;

    .line 36
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_FUSEAD_VIEW"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_VIEW:Lcom/fusepowered/util/ActionType;

    .line 37
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_FUSEAD_CLICK"

    const/16 v2, 0x20

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_CLICK:Lcom/fusepowered/util/ActionType;

    .line 38
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GENDER_UPDATE"

    const/16 v2, 0x21

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GENDER_UPDATE:Lcom/fusepowered/util/ActionType;

    .line 39
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_REGISTER_FRIENDS_LIST"

    const/16 v2, 0x22

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    .line 41
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_MIGRATE_FRIENDS"

    const/16 v2, 0x23

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MIGRATE_FRIENDS:Lcom/fusepowered/util/ActionType;

    .line 42
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_FRIENDS_LIST"

    const/16 v2, 0x24

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    .line 43
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_ADD_FRIEND"

    const/16 v2, 0x25

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_ADD_FRIEND:Lcom/fusepowered/util/ActionType;

    .line 44
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_REMOVE_FRIEND"

    const/16 v2, 0x26

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REMOVE_FRIEND:Lcom/fusepowered/util/ActionType;

    .line 45
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_ACCEPT_FRIEND"

    const/16 v2, 0x27

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_ACCEPT_FRIEND:Lcom/fusepowered/util/ActionType;

    .line 46
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_REJECT_FRIEND"

    const/16 v2, 0x28

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REJECT_FRIEND:Lcom/fusepowered/util/ActionType;

    .line 47
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SEND_PUSH_USER"

    const/16 v2, 0x29

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_USER:Lcom/fusepowered/util/ActionType;

    .line 48
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SEND_PUSH_LIST"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_LIST:Lcom/fusepowered/util/ActionType;

    .line 49
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_POST_MESSAGE"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_POST_MESSAGE:Lcom/fusepowered/util/ActionType;

    .line 50
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_MESSAGE_LIST"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_MESSAGE_LIST:Lcom/fusepowered/util/ActionType;

    .line 51
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_DELETE_MESSAGE"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_MESSAGE:Lcom/fusepowered/util/ActionType;

    .line 52
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_ENEMIES_LIST"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_ENEMIES_LIST:Lcom/fusepowered/util/ActionType;

    .line 53
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_LOG_USER_TRANSACTION"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_LOG_USER_TRANSACTION:Lcom/fusepowered/util/ActionType;

    .line 54
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_USER_TRANSACTION_LOG"

    const/16 v2, 0x30

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_USER_TRANSACTION_LOG:Lcom/fusepowered/util/ActionType;

    .line 55
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SET_SIGN_POST"

    const/16 v2, 0x31

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SET_SIGN_POST:Lcom/fusepowered/util/ActionType;

    .line 56
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_SIGN_POSTS"

    const/16 v2, 0x32

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_SIGN_POSTS:Lcom/fusepowered/util/ActionType;

    .line 57
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_DELETE_SIGN_POST"

    const/16 v2, 0x33

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_SIGN_POST:Lcom/fusepowered/util/ActionType;

    .line 58
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_SEND_MAIL"

    const/16 v2, 0x34

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SEND_MAIL:Lcom/fusepowered/util/ActionType;

    .line 59
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_GET_MAIL"

    const/16 v2, 0x35

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_MAIL:Lcom/fusepowered/util/ActionType;

    .line 60
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_MARK_MAIL_AS_READ"

    const/16 v2, 0x36

    const/16 v3, 0x36

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MARK_MAIL_AS_READ:Lcom/fusepowered/util/ActionType;

    .line 61
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_REGISTER_RESOURCE"

    const/16 v2, 0x37

    const/16 v3, 0x37

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_RESOURCE:Lcom/fusepowered/util/ActionType;

    .line 62
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_FUSE_AD_SKIP"

    const/16 v2, 0x38

    const/16 v3, 0x38

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_AD_SKIP:Lcom/fusepowered/util/ActionType;

    .line 63
    new-instance v0, Lcom/fusepowered/util/ActionType;

    const-string v1, "ACTION_FUSE_REGISTER_GCM"

    const/16 v2, 0x39

    const/16 v3, 0x39

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_REGISTER_GCM:Lcom/fusepowered/util/ActionType;

    .line 4
    const/16 v0, 0x3a

    new-array v0, v0, [Lcom/fusepowered/util/ActionType;

    sget-object v1, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_END:Lcom/fusepowered/util/ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_ID:Lcom/fusepowered/util/ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/util/ActionType;->ACTION_AD_DISPLAY:Lcom/fusepowered/util/ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/util/ActionType;->ACTION_AD_CLICK:Lcom/fusepowered/util/ActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GAME_CRASH:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_CLICK:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_INAPP_PURCHASE:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_LOCATION:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SPLASH_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SPLASH_CLICK:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REWARD_REDEMPTION:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_AD_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_AD_CLICK:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_AD_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_AD_CLICK:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVE_ACTION_COMPLETE:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_TOKEN_RECEIVED:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SUSPEND_SESSION:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_RESUME_SESSION:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_PUSH_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_DLC_LIST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_SERVER_UTC_TIME:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_USER_OPT_OUT:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_AD:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_VIEW:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_CLICK:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GENDER_UPDATE:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MIGRATE_FRIENDS:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_ADD_FRIEND:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REMOVE_FRIEND:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_ACCEPT_FRIEND:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REJECT_FRIEND:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_USER:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_LIST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_POST_MESSAGE:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_MESSAGE_LIST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_MESSAGE:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_ENEMIES_LIST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_LOG_USER_TRANSACTION:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_USER_TRANSACTION_LOG:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SET_SIGN_POST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_SIGN_POSTS:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_SIGN_POST:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SEND_MAIL:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_MAIL:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MARK_MAIL_AS_READ:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_RESOURCE:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_AD_SKIP:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_REGISTER_GCM:Lcom/fusepowered/util/ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/util/ActionType;->$VALUES:[Lcom/fusepowered/util/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "messageCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/fusepowered/util/ActionType;->messageCode:I

    .line 77
    return-void
.end method

.method public static getActionTypeByCode(I)Lcom/fusepowered/util/ActionType;
    .locals 1
    .param p0, "messageCode"    # I

    .prologue
    .line 80
    packed-switch p0, :pswitch_data_0

    .line 198
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_END:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 86
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_ID:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 88
    :pswitch_3
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_AD_DISPLAY:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 90
    :pswitch_4
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_AD_CLICK:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 92
    :pswitch_5
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 94
    :pswitch_6
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GAME_CRASH:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 96
    :pswitch_7
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 98
    :pswitch_8
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_CLICK:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 100
    :pswitch_9
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INAPP_PURCHASE:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 102
    :pswitch_a
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 104
    :pswitch_b
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 106
    :pswitch_c
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_LOCATION:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 108
    :pswitch_d
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SPLASH_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 110
    :pswitch_e
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SPLASH_CLICK:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 112
    :pswitch_f
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REWARD_REDEMPTION:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 114
    :pswitch_10
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 116
    :pswitch_11
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_AD_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 118
    :pswitch_12
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_AD_CLICK:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 120
    :pswitch_13
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 122
    :pswitch_14
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_AD_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 124
    :pswitch_15
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVES_AD_CLICK:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 126
    :pswitch_16
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_INCENTIVE_ACTION_COMPLETE:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 128
    :pswitch_17
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_TOKEN_RECEIVED:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 130
    :pswitch_18
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SUSPEND_SESSION:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 132
    :pswitch_19
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_RESUME_SESSION:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 134
    :pswitch_1a
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_PUSH_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 136
    :pswitch_1b
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_DLC_LIST:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 138
    :pswitch_1c
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_SERVER_UTC_TIME:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 140
    :pswitch_1d
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_USER_OPT_OUT:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 142
    :pswitch_1e
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_AD:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 144
    :pswitch_1f
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_VIEW:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 146
    :pswitch_20
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_CLICK:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 148
    :pswitch_21
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GENDER_UPDATE:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 150
    :pswitch_22
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 152
    :pswitch_23
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MIGRATE_FRIENDS:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 154
    :pswitch_24
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 156
    :pswitch_25
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_ADD_FRIEND:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 158
    :pswitch_26
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REMOVE_FRIEND:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 160
    :pswitch_27
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_ACCEPT_FRIEND:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 162
    :pswitch_28
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REJECT_FRIEND:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 164
    :pswitch_29
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_USER:Lcom/fusepowered/util/ActionType;

    goto :goto_0

    .line 166
    :pswitch_2a
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_LIST:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 168
    :pswitch_2b
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_POST_MESSAGE:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 170
    :pswitch_2c
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_MESSAGE_LIST:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 172
    :pswitch_2d
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_MESSAGE:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 174
    :pswitch_2e
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_ENEMIES_LIST:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 176
    :pswitch_2f
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_LOG_USER_TRANSACTION:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 178
    :pswitch_30
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_USER_TRANSACTION_LOG:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 180
    :pswitch_31
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SET_SIGN_POST:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 182
    :pswitch_32
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_SIGN_POSTS:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 184
    :pswitch_33
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_SIGN_POST:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 186
    :pswitch_34
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_SEND_MAIL:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 188
    :pswitch_35
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_GET_MAIL:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 190
    :pswitch_36
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_MARK_MAIL_AS_READ:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 192
    :pswitch_37
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_RESOURCE:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 194
    :pswitch_38
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_AD_SKIP:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 196
    :pswitch_39
    sget-object v0, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_REGISTER_GCM:Lcom/fusepowered/util/ActionType;

    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
    .end packed-switch
.end method

.method public static getServerUrlForActionCode(Lcom/fusepowered/util/ActionType;)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # Lcom/fusepowered/util/ActionType;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getServerHostUrl()Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 234
    :cond_0
    sget-object v0, Lcom/fusepowered/util/ActionType$1;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual {p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getServerHostUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_0
    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getAnalyticsHostUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getAdServerHostUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getScarfaceHostUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_3
    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getDataServerHostUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isDataAction(Lcom/fusepowered/util/ActionType;)Z
    .locals 3
    .param p0, "action"    # Lcom/fusepowered/util/ActionType;

    .prologue
    const/4 v2, 0x0

    .line 203
    if-nez p0, :cond_0

    move v0, v2

    .line 224
    :goto_0
    return v0

    .line 207
    :cond_0
    sget-object v0, Lcom/fusepowered/util/ActionType$1;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual {p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 224
    goto :goto_0

    .line 222
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/fusepowered/util/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/util/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/ActionType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/fusepowered/util/ActionType;->$VALUES:[Lcom/fusepowered/util/ActionType;

    invoke-virtual {v0}, [Lcom/fusepowered/util/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/ActionType;

    return-object v0
.end method


# virtual methods
.method public getMessageCode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/fusepowered/util/ActionType;->messageCode:I

    return v0
.end method

.method public setMessageCode(I)V
    .locals 0
    .param p1, "messageCode"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/fusepowered/util/ActionType;->messageCode:I

    .line 73
    return-void
.end method
