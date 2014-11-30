.class public final enum Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;
.super Ljava/lang/Enum;
.source "PHPublisherContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHRequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

.field public static final enum Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

.field public static final enum Initialized:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

.field public static final enum Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

.field public static final enum Preloading:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Initialized:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 57
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    const-string v1, "Preloading"

    invoke-direct {v0, v1, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloading:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 58
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    const-string v1, "Preloaded"

    invoke-direct {v0, v1, v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 59
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    const-string v1, "DisplayingContent"

    invoke-direct {v0, v1, v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 60
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    const-string v1, "Done"

    invoke-direct {v0, v1, v6}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Initialized:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloading:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
