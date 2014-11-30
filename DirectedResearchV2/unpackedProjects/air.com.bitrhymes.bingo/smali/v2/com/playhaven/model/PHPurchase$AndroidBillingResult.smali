.class public final enum Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;
.super Ljava/lang/Enum;
.source "PHPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/model/PHPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AndroidBillingResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

.field public static final enum Bought:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

.field public static final enum Cancelled:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

.field public static final enum Failed:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    const-string v1, "Bought"

    const-string v2, "buy"

    invoke-direct {v0, v1, v3, v2}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Bought:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 22
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    const-string v1, "Cancelled"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Cancelled:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 23
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    const-string v1, "Failed"

    const-string v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Failed:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Bought:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Cancelled:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->Failed:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    aput-object v1, v0, v5

    sput-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->$VALUES:[Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->type:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->$VALUES:[Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v0}, [Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->type:Ljava/lang/String;

    return-object v0
.end method
