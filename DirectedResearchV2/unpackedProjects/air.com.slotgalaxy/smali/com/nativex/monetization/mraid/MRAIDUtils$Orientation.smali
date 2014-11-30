.class public final enum Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

.field public static final enum LANDSCAPE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

.field public static final enum NONE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

.field public static final enum PORTRAIT:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    const-string v1, "PORTRAIT"

    const-string v2, "portrait"

    invoke-direct {v0, v1, v3, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->PORTRAIT:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    .line 106
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    const-string v1, "LANDSCAPE"

    const-string v2, "landscape"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->LANDSCAPE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    .line 107
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->PORTRAIT:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->LANDSCAPE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->value:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static getOrientation(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->values()[Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    move-result-object v0

    .local v0, "arr$":[Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 123
    .local v3, "orientation":Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 127
    .end local v3    # "orientation":Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    :goto_1
    return-object v4

    .line 122
    .restart local v3    # "orientation":Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "orientation":Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    :cond_1
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->value:Ljava/lang/String;

    return-object v0
.end method
