.class public Lcom/dolphin/browser/javascript/EvernotePageClipInterface;
.super Ljava/lang/Object;
.source "EvernotePageClipInterface.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final JS_INTERFACE_NAME:Ljava/lang/String; = "comdolphinbrowseraddonsevernote"


# instance fields
.field private mListener:Lcom/dolphin/browser/javascript/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public loadResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    :goto_0
    return-object v0

    .line 47
    :cond_0
    :try_start_0
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const-string v2, "Share"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->b(Lcom/dolphin/browser/Network/n;)V

    .line 54
    iget-object v1, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setENMLContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/javascript/EvernotePageClipInterface;->mListener:Lcom/dolphin/browser/javascript/d;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/dolphin/browser/javascript/EvernotePageClipInterface;->mListener:Lcom/dolphin/browser/javascript/d;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/javascript/d;->a(Ljava/lang/String;)V

    .line 36
    :cond_0
    monitor-exit p0

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJsEventListener(Lcom/dolphin/browser/javascript/d;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/javascript/EvernotePageClipInterface;->mListener:Lcom/dolphin/browser/javascript/d;

    .line 23
    return-void
.end method
