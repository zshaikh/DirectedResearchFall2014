.class public final enum Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
.super Ljava/lang/Enum;
.source "CloudMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

.field public static final enum STATUS_BAR_NOTIFICATION:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

.field public static final enum UNKNOWN:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    const-string v1, "STATUS_BAR_NOTIFICATION"

    .line 11
    const-string v2, "sb_notification"

    invoke-direct {v0, v1, v3, v2}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->STATUS_BAR_NOTIFICATION:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    .line 13
    new-instance v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->UNKNOWN:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->STATUS_BAR_NOTIFICATION:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->UNKNOWN:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->ENUM$VALUES:[Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "strValue"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
    .locals 4
    .param p0, "aStrValue"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->values()[Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    move-result-object v2

    .line 29
    .local v2, "vals":[Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->UNKNOWN:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    .line 31
    .local v1, "result":Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 37
    return-object v1

    .line 32
    :cond_0
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->value:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    aget-object v1, v2, v0

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->ENUM$VALUES:[Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->value:Ljava/lang/String;

    return-object v0
.end method
