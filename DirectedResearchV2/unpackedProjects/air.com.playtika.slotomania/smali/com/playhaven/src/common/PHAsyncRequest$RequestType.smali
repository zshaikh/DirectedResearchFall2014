.class public final enum Lcom/playhaven/src/common/PHAsyncRequest$RequestType;
.super Ljava/lang/Enum;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/common/PHAsyncRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Delete:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

.field public static final enum Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

.field public static final enum Post:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

.field public static final enum Put:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    const-string v1, "Post"

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Post:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    const-string v1, "Get"

    invoke-direct {v0, v1, v3}, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    const-string v1, "Put"

    invoke-direct {v0, v1, v4}, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Put:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v5}, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Delete:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    sget-object v1, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Post:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Put:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Delete:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->ENUM$VALUES:[Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/common/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/common/PHAsyncRequest$RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->ENUM$VALUES:[Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
