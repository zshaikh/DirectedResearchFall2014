.class final enum Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UrlScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum AD_CONVERTED:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum GOOGLE_MARKET:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum GOOGLE_PLAY:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum LOADED:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum LOG:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum MARKET_CUSTOM_SCHEME:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum NON_REWARD_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum NON_REWARD_CLOSE_OLD:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum OPEN:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum SIZE_SCRIPT_SET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

.field public static final enum USE_CUSTOM_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;


# instance fields
.field private scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "OPEN"

    const-string v2, "mraid://open"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->OPEN:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 314
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "CLOSE"

    const-string v2, "mraid://close"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 315
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "PLAY_VIDEO"

    const-string v2, "mraid://playVideo"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 316
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "EXPAND"

    const-string v2, "mraid://expand"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 317
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "RESIZE"

    const-string v2, "mraid://resize"

    invoke-direct {v0, v1, v8, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 318
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "STORE_PICTURE"

    const/4 v2, 0x5

    const-string v3, "mraid://storePicture"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 319
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "SET_RESIZE_PROPERTIES"

    const/4 v2, 0x6

    const-string v3, "mraid://setResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 320
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "SET_EXPAND_PROPERTIES"

    const/4 v2, 0x7

    const-string v3, "mraid://setExpandProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 321
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const/16 v2, 0x8

    const-string v3, "mraid://setOrientationProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 322
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "LOADED"

    const/16 v2, 0x9

    const-string v3, "nativex://loaded"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->LOADED:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 323
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "LOG"

    const/16 v2, 0xa

    const-string v3, "nativex://log"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->LOG:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 324
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "USE_CUSTOM_CLOSE"

    const/16 v2, 0xb

    const-string v3, "mraid://useCustomClose"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->USE_CUSTOM_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 325
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v2, 0xc

    const-string v3, "mraid://createCalendarEvent/"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 326
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "SIZE_SCRIPT_SET_PAGE_SIZE"

    const/16 v2, 0xd

    const-string v3, "nativeXSizeScript://setPageSize/"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SIZE_SCRIPT_SET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 327
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "NON_REWARD_CLOSE"

    const/16 v2, 0xe

    const-string v3, "webview:dismissView"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->NON_REWARD_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 328
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "NON_REWARD_CLOSE_OLD"

    const/16 v2, 0xf

    const-string v3, "w3imaap:dismissView"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->NON_REWARD_CLOSE_OLD:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 329
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "GOOGLE_MARKET"

    const/16 v2, 0x10

    const-string v3, "http://market.android.com/details"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->GOOGLE_MARKET:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 330
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "GOOGLE_PLAY"

    const/16 v2, 0x11

    const-string v3, "https://play.google.com/"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->GOOGLE_PLAY:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 331
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "MARKET_CUSTOM_SCHEME"

    const/16 v2, 0x12

    const-string v3, "market://"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->MARKET_CUSTOM_SCHEME:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 332
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    const-string v1, "AD_CONVERTED"

    const/16 v2, 0x13

    const-string v3, "nativex://adConverted/"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->AD_CONVERTED:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    .line 311
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->OPEN:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->RESIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->LOADED:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->LOG:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->USE_CUSTOM_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SIZE_SCRIPT_SET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->NON_REWARD_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->NON_REWARD_CLOSE_OLD:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->GOOGLE_MARKET:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->GOOGLE_PLAY:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->MARKET_CUSTOM_SCHEME:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->AD_CONVERTED:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 338
    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->scheme:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public static checkForScheme(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->values()[Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    move-result-object v0

    .local v0, "arr$":[Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 348
    .local v3, "scheme":Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 352
    .end local v3    # "scheme":Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    :goto_1
    return-object v4

    .line 347
    .restart local v3    # "scheme":Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v3    # "scheme":Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    return-object v0
.end method


# virtual methods
.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->scheme:Ljava/lang/String;

    return-object v0
.end method
