.class public final enum Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;
.super Ljava/lang/Enum;
.source "BillingInterfaceAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUY_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field public static final enum CONSUME_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field public static final enum QUERY_CONTENT_SERVER:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field public static final enum QUERY_STORE:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field public static final enum QUERY_STORE_PURCHASES:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field public static final enum SETUP:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field public static final enum SHUTDOWN:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;


# instance fields
.field public final consumptionRequired:Z

.field public final setupRequired:Z

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    const-string v1, "SETUP"

    .line 10
    const-string v3, "com.gamesys.android.billing.ane.SETUP"

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SETUP:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 12
    new-instance v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    const-string v4, "SHUTDOWN"

    .line 13
    const-string v6, "com.gamesys.android.billing.ane.SHUTDOWN"

    move v5, v9

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SHUTDOWN:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 15
    new-instance v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    const-string v4, "QUERY_CONTENT_SERVER"

    .line 16
    const-string v6, "com.gamesys.android.billing.ane.QUERY_CONTENT_SERVER"

    move v5, v10

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_CONTENT_SERVER:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 18
    new-instance v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    const-string v4, "CONSUME_ITEM"

    .line 19
    const-string v6, "com.gamesys.android.billing.ane.CONSUME_ITEM"

    move v5, v11

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->CONSUME_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 21
    new-instance v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    const-string v4, "BUY_ITEM"

    .line 22
    const-string v6, "com.gamesys.android.billing.ane.BUY_ITEM"

    move v5, v12

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->BUY_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 24
    new-instance v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    const-string v4, "QUERY_STORE_PURCHASES"

    const/4 v5, 0x5

    .line 25
    const-string v6, "com.gamesys.android.billing.ane.QUERY_STORE_PURCHASES"

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE_PURCHASES:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 27
    new-instance v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    const-string v4, "QUERY_STORE"

    const/4 v5, 0x6

    .line 28
    const-string v6, "com.gamesys.android.billing.ane.QUERY_STORE"

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SETUP:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SHUTDOWN:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    aput-object v1, v0, v9

    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_CONTENT_SERVER:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    aput-object v1, v0, v10

    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->CONSUME_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    aput-object v1, v0, v11

    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->BUY_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE_PURCHASES:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ENUM$VALUES:[Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "setupRequired"    # Z
    .param p5, "consumptionRequired"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->value:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->setupRequired:Z

    .line 58
    iput-boolean p5, p0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->consumptionRequired:Z

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ENUM$VALUES:[Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->value:Ljava/lang/String;

    return-object v0
.end method
