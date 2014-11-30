.class final Lcom/dolphin/browser/extensions/af;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/ITitleBarExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 732
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
            "Lcom/dolphin/browser/extensions/ITitleBarExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/ITitleBarExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 736
    return-object v0
.end method


# virtual methods
.method public initTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    .locals 2

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 743
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 744
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/af;->a()Ljava/util/Set;

    move-result-object v0

    .line 745
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/ITitleBarExtension;

    .line 747
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/ITitleBarExtension;->initTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 752
    :cond_0
    return-void
.end method

.method public shouldHideFavicon(Lcom/dolphin/browser/core/ITab;)Z
    .locals 2

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/af;->a()Ljava/util/Set;

    move-result-object v0

    .line 769
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/ITitleBarExtension;

    .line 771
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/ITitleBarExtension;->shouldHideFavicon(Lcom/dolphin/browser/core/ITab;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 772
    if-eqz v0, :cond_0

    .line 779
    :goto_1
    return v0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 779
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/af;->a()Ljava/util/Set;

    move-result-object v0

    .line 757
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/ITitleBarExtension;

    .line 759
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/ITitleBarExtension;->updateTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/core/ITab;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method
