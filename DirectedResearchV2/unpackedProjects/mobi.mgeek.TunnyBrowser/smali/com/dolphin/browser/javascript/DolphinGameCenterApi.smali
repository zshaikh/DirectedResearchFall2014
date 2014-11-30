.class public Lcom/dolphin/browser/javascript/DolphinGameCenterApi;
.super Ljava/lang/Object;
.source "DolphinGameCenterApi.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final JS_INTERFACE_NAME:Ljava/lang/String; = "dolphinGameCenter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJsApiManager:Lcom/dolphin/browser/javascript/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/javascript/DolphinGameCenterApi;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/dolphin/browser/javascript/k;->a()Lcom/dolphin/browser/javascript/k;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/javascript/DolphinGameCenterApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    .line 27
    return-void
.end method


# virtual methods
.method public createGameShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinGameCenterApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/javascript/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return v1

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 38
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 40
    div-int/lit8 v3, p4, 0x2

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 41
    div-int/lit8 v3, p4, 0x2

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 42
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/dolphin/browser/javascript/DolphinGameCenterApi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v2, p1, p2, v1, v4}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_1
    move v1, v0

    .line 50
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinGameCenterApi;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, p1, p2, v2, v4}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 48
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dolphin/browser/javascript/DolphinGameCenterApi;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, p1, p2, v2, v4}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    throw v0
.end method

.method public removeGameShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
