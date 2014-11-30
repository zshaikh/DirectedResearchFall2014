.class final enum Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;
.super Ljava/lang/Enum;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/billing/google/util/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HelperOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVITY_RESULT:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

.field public static final enum CONSUME:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

.field public static final enum PURCHASE_ITEM:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

.field public static final enum QUERY_INVENTORY:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1059
    new-instance v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    const-string v1, "QUERY_INVENTORY"

    .line 1060
    const-string v2, "launchPurchaseFlow"

    invoke-direct {v0, v1, v3, v2}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->QUERY_INVENTORY:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    .line 1062
    new-instance v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    const-string v1, "CONSUME"

    .line 1063
    const-string v2, "consumption"

    invoke-direct {v0, v1, v4, v2}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->CONSUME:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    .line 1065
    new-instance v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    const-string v1, "ACTIVITY_RESULT"

    .line 1066
    const-string v2, "handleActivityResult"

    invoke-direct {v0, v1, v5, v2}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ACTIVITY_RESULT:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    .line 1068
    new-instance v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    const-string v1, "PURCHASE_ITEM"

    .line 1069
    const-string v2, "launchPurchaseFlow"

    invoke-direct {v0, v1, v6, v2}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->PURCHASE_ITEM:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    .line 1058
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->QUERY_INVENTORY:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->CONSUME:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ACTIVITY_RESULT:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->PURCHASE_ITEM:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ENUM$VALUES:[Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 1073
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1074
    iput-object p3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->value:Ljava/lang/String;

    .line 1075
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ENUM$VALUES:[Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->value:Ljava/lang/String;

    return-object v0
.end method
