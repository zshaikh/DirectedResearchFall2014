.class public final enum Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;
.super Ljava/lang/Enum;
.source "PHPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/model/PHPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHMarketplaceOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Amazon:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

.field public static final enum Crossmo:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

.field private static final synthetic ENUM$VALUES:[Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

.field public static final enum Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

.field public static final enum Motorola:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

.field public static final enum Paypal:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;


# instance fields
.field private originStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    const-string v1, "Google"

    const-string v2, "GoogleMarketplace"

    invoke-direct {v0, v1, v3, v2}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 42
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    const-string v1, "Amazon"

    const-string v2, "AmazonAppstore"

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Amazon:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 43
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    const-string v1, "Paypal"

    const-string v2, "Paypal"

    invoke-direct {v0, v1, v5, v2}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Paypal:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 44
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    const-string v1, "Crossmo"

    const-string v2, "Crossmo"

    invoke-direct {v0, v1, v6, v2}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Crossmo:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 45
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    const-string v1, "Motorola"

    const-string v2, "MotorolaAppstore"

    invoke-direct {v0, v1, v7, v2}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Motorola:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Amazon:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Paypal:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Crossmo:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    aput-object v1, v0, v6

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Motorola:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    aput-object v1, v0, v7

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ENUM$VALUES:[Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "originStr"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->originStr:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->ENUM$VALUES:[Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    array-length v1, v0

    new-array v2, v1, [Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->originStr:Ljava/lang/String;

    return-object v0
.end method
