.class public final enum Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/billing/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

.field public static final enum PURCHASED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

.field public static final enum REFUNDED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->PURCHASED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    .line 48
    new-instance v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->CANCELED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    .line 49
    new-instance v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->REFUNDED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    sget-object v1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->PURCHASED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->CANCELED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->REFUNDED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->ENUM$VALUES:[Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->values()[Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    move-result-object v0

    .line 54
    .local v0, "values":[Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 55
    :cond_0
    sget-object v1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->CANCELED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    .line 57
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->ENUM$VALUES:[Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
