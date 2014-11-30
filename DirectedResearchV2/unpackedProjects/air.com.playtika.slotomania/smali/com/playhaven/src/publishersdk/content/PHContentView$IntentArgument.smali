.class public final enum Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;
.super Ljava/lang/Enum;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentArgument"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Content:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

.field public static final enum CustomCloseBtn:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

.field public static final enum Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    const-string v1, "CustomCloseBtn"

    const-string v2, "custom_close"

    invoke-direct {v0, v1, v3, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->CustomCloseBtn:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    .line 116
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    const-string v1, "Content"

    const-string v2, "init_content_contentview"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    .line 117
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    const-string v1, "Tag"

    const-string v2, "content_tag"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->CustomCloseBtn:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Content:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->Tag:Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    aput-object v1, v0, v5

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->key:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$IntentArgument;->key:Ljava/lang/String;

    return-object v0
.end method
