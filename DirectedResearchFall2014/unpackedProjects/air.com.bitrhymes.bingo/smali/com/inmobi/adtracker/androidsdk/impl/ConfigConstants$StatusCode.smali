.class public final enum Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
.super Ljava/lang/Enum;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_ANALYTICS_PREVIOUSLY_UPLOADED:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

.field public static final enum APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

.field public static final enum APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

.field public static final enum APP_CONTEXT_NULL:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

.field public static final enum APP_NOT_CONNECTED:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

.field public static final enum ODIN1_NULL:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

.field public static final enum RELOAD_WEBVIEW_ERROR:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

.field private static final synthetic a:[Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    const-string v1, "APP_ANALYTICS_UPLOAD_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    const-string v1, "APP_CONTEXT_NULL"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_CONTEXT_NULL:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    const-string v1, "APP_ANALYTICS_PREVIOUSLY_UPLOADED"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_PREVIOUSLY_UPLOADED:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    const-string v1, "ODIN1_NULL"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->ODIN1_NULL:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    const-string v1, "APP_ANALYTICS_UPLOAD_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    const-string v1, "APP_NOT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_NOT_CONNECTED:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    const-string v1, "RELOAD_WEBVIEW_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->RELOAD_WEBVIEW_ERROR:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_CONTEXT_NULL:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_PREVIOUSLY_UPLOADED:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->ODIN1_NULL:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_NOT_CONNECTED:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->RELOAD_WEBVIEW_ERROR:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->a:[Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->a:[Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
