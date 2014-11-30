.class Lcom/dolphin/browser/extensions/aj;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IWebViewPageExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/extensions/IWebViewPageExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 286
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    const-class v2, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 287
    return-object v0
.end method


# virtual methods
.method public postOnPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aj;->a()Ljava/util/Set;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    .line 298
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postOnPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public postOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aj;->a()Ljava/util/Set;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    .line 333
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method public postPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aj;->a()Ljava/util/Set;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    .line 348
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method public postReceiveTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aj;->a()Ljava/util/Set;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    .line 363
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postReceiveTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public preOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aj;->a()Ljava/util/Set;

    move-result-object v1

    .line 311
    const/4 v0, 0x0

    .line 312
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    .line 314
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->preOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 315
    if-eqz v0, :cond_0

    .line 322
    :goto_1
    return v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v1

    :cond_0
    move v1, v0

    .line 320
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
