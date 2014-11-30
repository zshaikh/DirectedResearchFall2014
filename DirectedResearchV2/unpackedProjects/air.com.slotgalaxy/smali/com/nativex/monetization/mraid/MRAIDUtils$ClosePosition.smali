.class public final enum Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field public static final enum BOTTOM_CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field public static final enum BOTTOM_LEFT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field public static final enum BOTTOM_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field public static final enum CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field public static final enum TOP_CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field public static final enum TOP_LEFT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

.field public static final enum TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;


# instance fields
.field private position:Ljava/lang/String;

.field private themeElement:Lcom/nativex/monetization/theme/ThemeElementTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 358
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    const-string v1, "TOP_LEFT"

    const-string v2, "top-left"

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_LEFT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_LEFT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 359
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    const-string v1, "TOP_RIGHT"

    const-string v2, "top-right"

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_RIGHT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 360
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    const-string v1, "TOP_CENTER"

    const-string v2, "top-center"

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_CENTER:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 361
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    const-string v1, "CENTER"

    const-string v2, "center"

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_CENTER:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 362
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    const-string v1, "BOTTOM_LEFT"

    const-string v2, "bottom-left"

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_LEFT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->BOTTOM_LEFT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 363
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x5

    const-string v3, "bottom-right"

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_RIGHT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->BOTTOM_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 364
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x6

    const-string v3, "bottom-center"

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_CENTER:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->BOTTOM_CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .line 356
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_LEFT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->BOTTOM_LEFT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->BOTTOM_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->BOTTOM_CENTER:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/nativex/monetization/theme/ThemeElementTypes;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "themeElement"    # Lcom/nativex/monetization/theme/ThemeElementTypes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nativex/monetization/theme/ThemeElementTypes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 370
    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->position:Ljava/lang/String;

    .line 371
    iput-object p4, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->themeElement:Lcom/nativex/monetization/theme/ThemeElementTypes;

    .line 372
    return-void
.end method

.method public static getPosition(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->values()[Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v0

    .local v0, "arr$":[Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 385
    .local v3, "position":Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    iget-object v4, v3, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->position:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 389
    .end local v3    # "position":Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    :goto_1
    return-object v4

    .line 384
    .restart local v3    # "position":Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "position":Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    :cond_1
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->TOP_RIGHT:Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 356
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeElementType()Lcom/nativex/monetization/theme/ThemeElementTypes;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->themeElement:Lcom/nativex/monetization/theme/ThemeElementTypes;

    return-object v0
.end method
