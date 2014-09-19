.class public final enum Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;
.super Ljava/lang/Enum;
.source "IMAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMIDType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ID_LOGIN:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

.field public static final enum ID_SESSION:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

.field private static final synthetic a:[Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    const-string v1, "ID_LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_LOGIN:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    .line 84
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    const-string v1, "ID_SESSION"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_SESSION:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_LOGIN:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_SESSION:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->a:[Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->a:[Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
