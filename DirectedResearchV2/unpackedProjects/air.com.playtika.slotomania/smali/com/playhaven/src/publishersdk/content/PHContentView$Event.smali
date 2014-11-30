.class public final enum Lcom/playhaven/src/publishersdk/content/PHContentView$Event;
.super Ljava/lang/Enum;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHContentView$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidFail:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidLaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidLoad:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidMakePurchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidReceiveDispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidSendSubrequest:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidShow:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field public static final enum DidUnlockReward:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidShow"

    invoke-direct {v0, v1, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidShow:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 132
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidLoad"

    invoke-direct {v0, v1, v4}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidLoad:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 133
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidDismiss"

    invoke-direct {v0, v1, v5}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 134
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidFail"

    invoke-direct {v0, v1, v6}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidFail:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 135
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidUnlockReward"

    invoke-direct {v0, v1, v7}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidUnlockReward:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 136
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidMakePurchase"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidMakePurchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 137
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidSendSubrequest"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidSendSubrequest:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 138
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidReceiveDispatch"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidReceiveDispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 139
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const-string v1, "DidLaunchURL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidLaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    .line 130
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidShow:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidLoad:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidDismiss:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidFail:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidUnlockReward:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidMakePurchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidSendSubrequest:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidReceiveDispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidLaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContentView$Event;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHContentView$Event;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
