.class final Lcom/dolphin/browser/extensions/ah;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IWebViewExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/extensions/IWebViewExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IWebViewExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 89
    return-object v0
.end method


# virtual methods
.method public onWebViewCreated(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ah;->a()Ljava/util/Set;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewExtension;

    .line 112
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IWebViewExtension;->onWebViewCreated(Lcom/dolphin/browser/core/IWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public postOnUpdateWebSettings(Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ah;->a()Ljava/util/Set;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewExtension;

    .line 100
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IWebViewExtension;->postOnUpdateWebSettings(Lcom/dolphin/browser/core/IWebSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
