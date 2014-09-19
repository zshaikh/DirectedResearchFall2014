.class public final enum Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;
.super Ljava/lang/Enum;
.source "PHPublisherIAPTrackingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHPurchaseOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

.field public static final enum Amazon:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

.field public static final enum Crossmo:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

.field public static final enum Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

.field public static final enum Motorola:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

.field public static final enum Paypal:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;


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

    .line 45
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    const-string v1, "Google"

    const-string v2, "GoogleMarketplace"

    invoke-direct {v0, v1, v3, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 46
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    const-string v1, "Amazon"

    const-string v2, "AmazonAppstore"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Amazon:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 47
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    const-string v1, "Paypal"

    const-string v2, "Paypal"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Paypal:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 48
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    const-string v1, "Crossmo"

    const-string v2, "Crossmo"

    invoke-direct {v0, v1, v6, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Crossmo:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 49
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    const-string v1, "Motorola"

    const-string v2, "MotorolaAppstore"

    invoke-direct {v0, v1, v7, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Motorola:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Amazon:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Paypal:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Crossmo:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Motorola:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    aput-object v1, v0, v7

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->$VALUES:[Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "originStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->originStr:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->$VALUES:[Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v0}, [Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    return-object v0
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->originStr:Ljava/lang/String;

    return-object v0
.end method
