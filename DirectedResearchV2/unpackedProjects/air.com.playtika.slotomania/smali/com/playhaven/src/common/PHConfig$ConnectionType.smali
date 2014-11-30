.class public final enum Lcom/playhaven/src/common/PHConfig$ConnectionType;
.super Ljava/lang/Enum;
.source "PHConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/common/PHConfig$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/common/PHConfig$ConnectionType;

.field public static final enum MOBILE:Lcom/playhaven/src/common/PHConfig$ConnectionType;

.field public static final enum NO_NETWORK:Lcom/playhaven/src/common/PHConfig$ConnectionType;

.field public static final enum NO_PERMISSION:Lcom/playhaven/src/common/PHConfig$ConnectionType;

.field public static final enum WIFI:Lcom/playhaven/src/common/PHConfig$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/common/PHConfig$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;->NO_NETWORK:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    .line 88
    new-instance v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3}, Lcom/playhaven/src/common/PHConfig$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;->MOBILE:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    .line 89
    new-instance v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/playhaven/src/common/PHConfig$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;->WIFI:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    .line 90
    new-instance v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;

    const-string v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v5}, Lcom/playhaven/src/common/PHConfig$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;->NO_PERMISSION:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/playhaven/src/common/PHConfig$ConnectionType;

    sget-object v1, Lcom/playhaven/src/common/PHConfig$ConnectionType;->NO_NETWORK:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playhaven/src/common/PHConfig$ConnectionType;->MOBILE:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/common/PHConfig$ConnectionType;->WIFI:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/common/PHConfig$ConnectionType;->NO_PERMISSION:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;->ENUM$VALUES:[Lcom/playhaven/src/common/PHConfig$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/common/PHConfig$ConnectionType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/common/PHConfig$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/common/PHConfig$ConnectionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/common/PHConfig$ConnectionType;->ENUM$VALUES:[Lcom/playhaven/src/common/PHConfig$ConnectionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/common/PHConfig$ConnectionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
