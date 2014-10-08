.class public final enum Lcom/fusepowered/util/PurchaseState;
.super Ljava/lang/Enum;
.source "PurchaseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/PurchaseState;

.field public static final enum CANCELED:Lcom/fusepowered/util/PurchaseState;

.field public static final enum PURCHASED:Lcom/fusepowered/util/PurchaseState;

.field public static final enum REFUNDED:Lcom/fusepowered/util/PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/fusepowered/util/PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/util/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/util/PurchaseState;->PURCHASED:Lcom/fusepowered/util/PurchaseState;

    .line 7
    new-instance v0, Lcom/fusepowered/util/PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/util/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/util/PurchaseState;->CANCELED:Lcom/fusepowered/util/PurchaseState;

    .line 8
    new-instance v0, Lcom/fusepowered/util/PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/util/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/util/PurchaseState;->REFUNDED:Lcom/fusepowered/util/PurchaseState;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/util/PurchaseState;

    sget-object v1, Lcom/fusepowered/util/PurchaseState;->PURCHASED:Lcom/fusepowered/util/PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/PurchaseState;->CANCELED:Lcom/fusepowered/util/PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/PurchaseState;->REFUNDED:Lcom/fusepowered/util/PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/util/PurchaseState;->$VALUES:[Lcom/fusepowered/util/PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/fusepowered/util/PurchaseState;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 12
    invoke-static {}, Lcom/fusepowered/util/PurchaseState;->values()[Lcom/fusepowered/util/PurchaseState;

    move-result-object v0

    .line 13
    .local v0, "values":[Lcom/fusepowered/util/PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 14
    :cond_0
    sget-object v1, Lcom/fusepowered/util/PurchaseState;->CANCELED:Lcom/fusepowered/util/PurchaseState;

    .line 16
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/PurchaseState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/fusepowered/util/PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/util/PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/PurchaseState;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/fusepowered/util/PurchaseState;->$VALUES:[Lcom/fusepowered/util/PurchaseState;

    invoke-virtual {v0}, [Lcom/fusepowered/util/PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/PurchaseState;

    return-object v0
.end method
