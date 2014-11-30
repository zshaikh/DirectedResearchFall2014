.class public final enum Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;
.super Ljava/lang/Enum;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reward"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

.field public static final enum IDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

.field public static final enum QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

.field public static final enum ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

.field public static final enum SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;


# instance fields
.field private final keyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    const-string v1, "IDKey"

    const-string v2, "reward"

    invoke-direct {v0, v1, v3, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->IDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    .line 168
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    const-string v1, "QuantityKey"

    const-string v2, "quantity"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    .line 169
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    const-string v1, "ReceiptKey"

    const-string v2, "receipt"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    .line 170
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    const-string v1, "SignatureKey"

    const-string v2, "signature"

    invoke-direct {v0, v1, v6, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->IDKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    aput-object v1, v0, v6

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->keyName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Reward;->keyName:Ljava/lang/String;

    return-object v0
.end method
