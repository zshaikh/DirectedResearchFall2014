.class public final enum Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;
.super Ljava/lang/Enum;
.source "RequestBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

.field public static final enum Event:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

.field public static final enum Tag:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    const-string v1, "Event"

    const-string v2, "event_contentview"

    invoke-direct {v0, v1, v3, v2}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Event:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    .line 39
    new-instance v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    const-string v1, "Tag"

    const-string v2, "content_tag"

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Tag:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Event:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Tag:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    aput-object v1, v0, v4

    sput-object v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->$VALUES:[Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->key:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->$VALUES:[Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    invoke-virtual {v0}, [Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->key:Ljava/lang/String;

    return-object v0
.end method
