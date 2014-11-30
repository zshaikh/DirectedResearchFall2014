.class final Lcom/dolphin/browser/extensions/ae;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IKeyEventExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 784
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
            "Lcom/dolphin/browser/extensions/IKeyEventExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IKeyEventExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 788
    return-object v0
.end method


# virtual methods
.method public onBackButton(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 2

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ae;->a()Ljava/util/Set;

    move-result-object v0

    .line 794
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IKeyEventExtension;

    .line 796
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onBackButton(Lcom/dolphin/browser/core/IWebView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    .line 803
    :goto_1
    return v0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 803
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onMenuButton(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 2

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ae;->a()Ljava/util/Set;

    move-result-object v0

    .line 809
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IKeyEventExtension;

    .line 811
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onMenuButton(Lcom/dolphin/browser/core/IWebView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    const/4 v0, 0x1

    .line 818
    :goto_1
    return v0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 818
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSearchButton(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 2

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ae;->a()Ljava/util/Set;

    move-result-object v0

    .line 824
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IKeyEventExtension;

    .line 826
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onSearchButton(Lcom/dolphin/browser/core/IWebView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    const/4 v0, 0x1

    .line 833
    :goto_1
    return v0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 833
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVolumnDownButton(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 2

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ae;->a()Ljava/util/Set;

    move-result-object v0

    .line 839
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IKeyEventExtension;

    .line 841
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onVolumnDownButton(Lcom/dolphin/browser/core/IWebView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const/4 v0, 0x1

    .line 848
    :goto_1
    return v0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVolumnUpButton(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 2

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ae;->a()Ljava/util/Set;

    move-result-object v0

    .line 854
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IKeyEventExtension;

    .line 856
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onVolumnUpButton(Lcom/dolphin/browser/core/IWebView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x1

    .line 863
    :goto_1
    return v0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 863
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
