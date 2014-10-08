.class public final enum Lv2/com/playhaven/interstitial/PHContentEnums$Error;
.super Ljava/lang/Enum;
.source "PHContentEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/interstitial/PHContentEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/interstitial/PHContentEnums$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Error;

.field public static final enum CouldNotLoadURL:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

.field public static final enum FailedSubrequest:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

.field public static final enum NoBoundingBox:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

.field public static final enum NoResponseField:Lv2/com/playhaven/interstitial/PHContentEnums$Error;


# instance fields
.field private error:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    const-string v1, "NoBoundingBox"

    const-string v2, "The interstitial you requested was not able to be shown because it is missing required orientation data."

    invoke-direct {v0, v1, v3, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->NoBoundingBox:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    .line 9
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    const-string v1, "CouldNotLoadURL"

    const-string v2, "Ad was unable to load URL"

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->CouldNotLoadURL:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    .line 10
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    const-string v1, "FailedSubrequest"

    const-string v2, "Sub-request started from ad unit failed"

    invoke-direct {v0, v1, v5, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->FailedSubrequest:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    .line 11
    new-instance v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    const-string v1, "NoResponseField"

    const-string v2, "No \'response\' field in JSON resposne"

    invoke-direct {v0, v1, v6, v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->NoResponseField:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->NoBoundingBox:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->CouldNotLoadURL:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->FailedSubrequest:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    aput-object v1, v0, v5

    sget-object v1, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->NoResponseField:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    aput-object v1, v0, v6

    sput-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->error:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/interstitial/PHContentEnums$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/interstitial/PHContentEnums$Error;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->$VALUES:[Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    invoke-virtual {v0}, [Lv2/com/playhaven/interstitial/PHContentEnums$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->error:Ljava/lang/String;

    return-object v0
.end method
