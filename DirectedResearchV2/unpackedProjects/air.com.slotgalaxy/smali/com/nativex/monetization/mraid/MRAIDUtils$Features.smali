.class public final enum Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Features"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$Features;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

.field public static final enum CALENDAR:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

.field public static final enum INLINE_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

.field public static final enum SMS:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

.field public static final enum STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

.field public static final enum TEL:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;


# instance fields
.field private feature:Ljava/lang/String;

.field private supportLevel:I

.field private supported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    const-string v1, "SMS"

    const-string v2, "sms"

    invoke-direct {v0, v1, v3, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->SMS:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    .line 174
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    const-string v1, "TEL"

    const-string v2, "tel"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->TEL:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    .line 175
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    const-string v1, "CALENDAR"

    const-string v2, "calendar"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    .line 176
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    const-string v1, "STORE_PICTURE"

    const-string v2, "storePicture"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    .line 177
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    const-string v1, "INLINE_VIDEO"

    const-string v2, "inlineVideo"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->INLINE_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->SMS:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->TEL:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->INLINE_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->supported:Ljava/lang/Boolean;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->supportLevel:I

    .line 184
    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->feature:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDUtils$Features;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->feature:Ljava/lang/String;

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLevel()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->supportLevel:I

    return v0
.end method

.method public isSupported(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->supported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 194
    invoke-static {p1, p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkFeatureSupport(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$Features;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->supported:Ljava/lang/Boolean;

    .line 195
    invoke-static {p1, p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkSupportLevel(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$Features;)I

    move-result v0

    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->supportLevel:I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->supported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
