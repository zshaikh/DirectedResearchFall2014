.class public final enum Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JSCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum ADD_EVENT_LISTENER:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum CALL_RECEIVED:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum CALL_SDK:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum FIRE_CHANGE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum FIRE_ERROR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum FIRE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_STATE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum GET_VERSION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum IS_VIEWABLE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum LOG:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum OPEN:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum REMOVE_EVENT_LISTENER:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_FEATURE_SUPPORT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_IS_DEBUG_MODE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_IS_VIEWABLE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SET_STATE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SHOW_AD:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum SUPPORTS:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum TRACK_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field public static final enum USE_CUSTOM_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;


# instance fields
.field private command:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SHOW_AD"

    const-string v2, "showAd"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SHOW_AD:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 208
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_VERSION"

    const-string v2, "getVersion"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_VERSION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 209
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "ADD_EVENT_LISTENER"

    const-string v2, "addEventListener"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->ADD_EVENT_LISTENER:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 210
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "REMOVE_EVENT_LISTENER"

    const-string v2, "removeEventListener"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->REMOVE_EVENT_LISTENER:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 211
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "FIRE_EVENT"

    const-string v2, "fireEvent"

    invoke-direct {v0, v1, v8, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 212
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "FIRE_CHANGE_EVENT"

    const/4 v2, 0x5

    const-string v3, "fireChangeEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_CHANGE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 213
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "FIRE_ERROR_EVENT"

    const/4 v2, 0x6

    const-string v3, "fireErrorEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_ERROR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 214
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_STATE"

    const/4 v2, 0x7

    const-string v3, "getState"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_STATE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 215
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_STATE"

    const/16 v2, 0x8

    const-string v3, "setState"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_STATE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 216
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_FEATURE_SUPPORT"

    const/16 v2, 0x9

    const-string v3, "setFeatureSupport"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 217
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SUPPORTS"

    const/16 v2, 0xa

    const-string v3, "supports"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SUPPORTS:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 218
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_PLACEMENT_TYPE"

    const/16 v2, 0xb

    const-string v3, "getPlacementType"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 219
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_PLACEMENT_TYPE"

    const/16 v2, 0xc

    const-string v3, "setPlacementType"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 220
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_SCREEN_SIZE"

    const/16 v2, 0xd

    const-string v3, "getScreenSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 221
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_SCREEN_SIZE"

    const/16 v2, 0xe

    const-string v3, "setScreenSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 222
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_MAX_SIZE"

    const/16 v2, 0xf

    const-string v3, "getMaxSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 223
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_MAX_SIZE"

    const/16 v2, 0x10

    const-string v3, "setMaxSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 224
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "USE_CUSTOM_CLOSE"

    const/16 v2, 0x11

    const-string v3, "useCustomClose"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->USE_CUSTOM_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 225
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "OPEN"

    const/16 v2, 0x12

    const-string v3, "open"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->OPEN:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 226
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "CLOSE"

    const/16 v2, 0x13

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 227
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "EXPAND"

    const/16 v2, 0x14

    const-string v3, "expand"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 228
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "RESIZE"

    const/16 v2, 0x15

    const-string v3, "resize"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 229
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_ORIENTATION_PROPERTIES"

    const/16 v2, 0x16

    const-string v3, "getOrientationProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 230
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const/16 v2, 0x17

    const-string v3, "setOrientationProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 231
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_EXPAND_PROPERTIES"

    const/16 v2, 0x18

    const-string v3, "getExpandProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 232
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_EXPAND_PROPERTIES"

    const/16 v2, 0x19

    const-string v3, "setExpandProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 233
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_RESIZE_PROPERTIES"

    const/16 v2, 0x1a

    const-string v3, "getResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 234
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_RESIZE_PROPERTIES"

    const/16 v2, 0x1b

    const-string v3, "setResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 235
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_DEFAULT_POSITION"

    const/16 v2, 0x1c

    const-string v3, "getDefaultPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 236
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_DEFAULT_POSITION"

    const/16 v2, 0x1d

    const-string v3, "setDefaultPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 237
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_CURRENT_POSITION"

    const/16 v2, 0x1e

    const-string v3, "getCurrentPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 238
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_CURRENT_POSITION"

    const/16 v2, 0x1f

    const-string v3, "setCurrentPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 239
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v2, 0x20

    const-string v3, "createCalendarEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 240
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "PLAY_VIDEO"

    const/16 v2, 0x21

    const-string v3, "playVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 241
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "STORE_PICTURE"

    const/16 v2, 0x22

    const-string v3, "storePicture"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 242
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "IS_VIEWABLE"

    const/16 v2, 0x23

    const-string v3, "isViewable"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->IS_VIEWABLE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 243
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_IS_VIEWABLE"

    const/16 v2, 0x24

    const-string v3, "setIsViewable"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_IS_VIEWABLE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 244
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "CALL_SDK"

    const/16 v2, 0x25

    const-string v3, "callSdk"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CALL_SDK:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 245
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "LOG"

    const/16 v2, 0x26

    const-string v3, "log"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->LOG:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 246
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "SET_IS_DEBUG_MODE"

    const/16 v2, 0x27

    const-string v3, "setIsDebugMode"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_IS_DEBUG_MODE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 247
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "GET_PAGE_SIZE"

    const/16 v2, 0x28

    const-string v3, "getPageSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 248
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "CALL_RECEIVED"

    const/16 v2, 0x29

    const-string v3, "callReceived"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CALL_RECEIVED:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 249
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    const-string v1, "TRACK_VIDEO"

    const/16 v2, 0x2a

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->TRACK_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 205
    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SHOW_AD:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_VERSION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->ADD_EVENT_LISTENER:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->REMOVE_EVENT_LISTENER:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_CHANGE_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_ERROR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_STATE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_STATE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SUPPORTS:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_PLACEMENT_TYPE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_SCREEN_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_MAX_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->USE_CUSTOM_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->OPEN:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_DEFAULT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_CURRENT_POSITION:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->IS_VIEWABLE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_IS_VIEWABLE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CALL_SDK:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->LOG:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_IS_DEBUG_MODE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CALL_RECEIVED:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->TRACK_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 255
    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->command:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    return-object v0
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->command:Ljava/lang/String;

    return-object v0
.end method

.method public instance()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;-><init>(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;Lcom/nativex/monetization/mraid/MRAIDUtils$1;)V

    return-object v0
.end method
