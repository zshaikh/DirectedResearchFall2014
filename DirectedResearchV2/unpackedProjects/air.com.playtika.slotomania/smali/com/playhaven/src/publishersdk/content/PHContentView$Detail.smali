.class public final enum Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;
.super Ljava/lang/Enum;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Callback:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Content:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Context:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Dispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Error:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Event:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum LaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Purchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Reward:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

.field public static final enum Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Event"

    const-string v2, "event_contentview"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Event:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 144
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "CloseType"

    const-string v2, "closetype_contentview"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 145
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Callback"

    const-string v2, "callback_contentview"

    invoke-direct {v0, v1, v6, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Callback:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 146
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Context"

    const-string v2, "context_contentview"

    invoke-direct {v0, v1, v7, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Context:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 147
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Content"

    const-string v2, "content_contentview"

    invoke-direct {v0, v1, v8, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 148
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Error"

    const/4 v2, 0x5

    const-string v3, "error_contentview"

    invoke-direct {v0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Error:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 149
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Reward"

    const/4 v2, 0x6

    const-string v3, "reward_contentview"

    invoke-direct {v0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Reward:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 150
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Purchase"

    const/4 v2, 0x7

    const-string v3, "purchase_contentview"

    invoke-direct {v0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Purchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 151
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Tag"

    const/16 v2, 0x8

    const-string v3, "content_tag"

    invoke-direct {v0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 152
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "Dispatch"

    const/16 v2, 0x9

    const-string v3, "dispatch_contentview"

    invoke-direct {v0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Dispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 153
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    const-string v1, "LaunchURL"

    const/16 v2, 0xa

    const-string v3, "launchurl_contentview"

    invoke-direct {v0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->LaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    .line 142
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Event:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->CloseType:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Callback:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v1, v0, v6

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Context:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v1, v0, v7

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Error:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Reward:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Purchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Dispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->LaunchURL:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    aput-object v2, v0, v1

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->key:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->key:Ljava/lang/String;

    return-object v0
.end method
