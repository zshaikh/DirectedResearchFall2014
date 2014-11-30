.class public Lcom/dolphin/browser/javascript/EvernotePageClipHandler;
.super Lcom/dolphin/browser/javascript/h;
.source "EvernotePageClipHandler.java"


# instance fields
.field private b:Lcom/dolphin/browser/javascript/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dolphin/browser/javascript/h;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "comdolphinbrowseraddonsevernote"

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/javascript/c;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;->b:Lcom/dolphin/browser/javascript/c;

    .line 23
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public loadResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;->loadResourceImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadResourceImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "loadResource"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "url"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-object v0

    .line 79
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

    .line 84
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->b(Lcom/dolphin/browser/Network/n;)V

    .line 86
    iget-object v1, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setENMLContent(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;->setENMLContentImpl(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setENMLContentImpl(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "setENMLContent"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "res"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;->b:Lcom/dolphin/browser/javascript/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 53
    :try_start_1
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;->b:Lcom/dolphin/browser/javascript/c;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/javascript/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
