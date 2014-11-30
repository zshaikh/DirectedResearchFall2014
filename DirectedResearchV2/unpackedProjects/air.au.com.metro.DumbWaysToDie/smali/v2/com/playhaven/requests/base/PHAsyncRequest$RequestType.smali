.class public final enum Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;
.super Ljava/lang/Enum;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/base/PHAsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Delete:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

.field private static final synthetic ENUM$VALUES:[Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

.field public static final enum Get:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

.field public static final enum Post:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

.field public static final enum Put:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    const-string v1, "Post"

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Post:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    const-string v1, "Get"

    invoke-direct {v0, v1, v3}, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Get:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    const-string v1, "Put"

    invoke-direct {v0, v1, v4}, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Put:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v5}, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Delete:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    sget-object v1, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Post:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Get:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Put:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Delete:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->ENUM$VALUES:[Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->ENUM$VALUES:[Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    array-length v1, v0

    new-array v2, v1, [Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
