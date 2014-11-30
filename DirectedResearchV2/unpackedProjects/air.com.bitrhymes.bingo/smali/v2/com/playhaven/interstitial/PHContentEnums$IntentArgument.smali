.class public final enum Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;
.super Ljava/lang/Enum;
.source "PHContentEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/interstitial/PHContentEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentArgument"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

.field public static final enum Content:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

.field public static final enum CustomCloseBtn:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

.field public static final enum Tag:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    const-string v1, "CustomCloseBtn"

    const-string v2, "custom_close"

    invoke-direct {v0, v1, v3, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->CustomCloseBtn:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    .line 27
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    const-string v1, "Content"

    const-string v2, "init_content_contentview"

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Content:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    .line 28
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    const-string v1, "Tag"

    const-string v2, "content_tag"

    invoke-direct {v0, v1, v5, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Tag:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->CustomCloseBtn:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Content:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->Tag:Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    aput-object v1, v0, v5

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->key:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    invoke-virtual {v0}, [Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHContentEnums$IntentArgument;->key:Ljava/lang/String;

    return-object v0
.end method
