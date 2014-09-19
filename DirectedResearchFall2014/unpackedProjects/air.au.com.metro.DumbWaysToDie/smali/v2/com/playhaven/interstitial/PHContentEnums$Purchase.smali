.class public final enum Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;
.super Ljava/lang/Enum;
.source "PHContentEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/interstitial/PHContentEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purchase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CookieKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

.field private static final synthetic ENUM$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

.field public static final enum NameKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

.field public static final enum ProductIDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

.field public static final enum QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

.field public static final enum ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

.field public static final enum SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;


# instance fields
.field private final keyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    const-string v1, "ProductIDKey"

    const-string v2, "product"

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ProductIDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    .line 60
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    const-string v1, "NameKey"

    const-string v2, "name"

    invoke-direct {v0, v1, v5, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->NameKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    .line 61
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    const-string v1, "ReceiptKey"

    const-string v2, "receipt"

    invoke-direct {v0, v1, v6, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    .line 62
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    const-string v1, "SignatureKey"

    const-string v2, "signature"

    invoke-direct {v0, v1, v7, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    .line 63
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    const-string v1, "CookieKey"

    const-string v2, "cookie"

    invoke-direct {v0, v1, v8, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->CookieKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    .line 64
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    const-string v1, "QuantityKey"

    const/4 v2, 0x5

    const-string v3, "quantity"

    invoke-direct {v0, v1, v2, v3}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ProductIDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->NameKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    aput-object v1, v0, v5

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    aput-object v1, v0, v6

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    aput-object v1, v0, v7

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->CookieKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    aput-object v2, v0, v1

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ENUM$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "key"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->keyName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ENUM$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    array-length v1, v0

    new-array v2, v1, [Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->keyName:Ljava/lang/String;

    return-object v0
.end method
