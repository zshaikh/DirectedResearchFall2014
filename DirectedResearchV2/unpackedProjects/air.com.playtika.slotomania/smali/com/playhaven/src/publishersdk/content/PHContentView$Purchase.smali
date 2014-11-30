.class public final enum Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;
.super Ljava/lang/Enum;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purchase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CookieKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

.field public static final enum NameKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

.field public static final enum ProductIDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

.field public static final enum QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

.field public static final enum ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

.field public static final enum SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;


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

    .line 184
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    const-string v1, "ProductIDKey"

    const-string v2, "product"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ProductIDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    .line 185
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    const-string v1, "NameKey"

    const-string v2, "name"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->NameKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    .line 186
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    const-string v1, "QuantityKey"

    const-string v2, "quantity"

    invoke-direct {v0, v1, v6, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    .line 187
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    const-string v1, "ReceiptKey"

    const-string v2, "receipt"

    invoke-direct {v0, v1, v7, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    .line 188
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    const-string v1, "SignatureKey"

    const-string v2, "signature"

    invoke-direct {v0, v1, v8, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    .line 189
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    const-string v1, "CookieKey"

    const/4 v2, 0x5

    const-string v3, "cookie"

    invoke-direct {v0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->CookieKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ProductIDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->NameKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    aput-object v1, v0, v6

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    aput-object v1, v0, v7

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->CookieKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    aput-object v2, v0, v1

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->keyName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Purchase;->keyName:Ljava/lang/String;

    return-object v0
.end method
