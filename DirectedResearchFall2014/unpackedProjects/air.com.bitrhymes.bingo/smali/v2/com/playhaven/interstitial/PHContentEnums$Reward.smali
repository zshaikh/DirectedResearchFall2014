.class public final enum Lv2/com/playhaven/interstitial/PHContentEnums$Reward;
.super Ljava/lang/Enum;
.source "PHContentEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/interstitial/PHContentEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reward"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/interstitial/PHContentEnums$Reward;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

.field public static final enum IDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

.field public static final enum QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

.field public static final enum ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

.field public static final enum SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;


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

    .line 42
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    const-string v1, "IDKey"

    const-string v2, "reward"

    invoke-direct {v0, v1, v3, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->IDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    .line 43
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    const-string v1, "QuantityKey"

    const-string v2, "quantity"

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    .line 44
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    const-string v1, "ReceiptKey"

    const-string v2, "receipt"

    invoke-direct {v0, v1, v5, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    .line 45
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    const-string v1, "SignatureKey"

    const-string v2, "signature"

    invoke-direct {v0, v1, v6, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->IDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    aput-object v1, v0, v5

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    aput-object v1, v0, v6

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->keyName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/interstitial/PHContentEnums$Reward;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/interstitial/PHContentEnums$Reward;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v0}, [Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->keyName:Ljava/lang/String;

    return-object v0
.end method
