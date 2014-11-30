.class final Lcom/dolphin/browser/extensions/ac;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 498
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
            "Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 502
    return-object v0
.end method


# virtual methods
.method public onDownloadEnded(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ac;->a()Ljava/util/Set;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;

    .line 511
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;->onDownloadEnded(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 516
    :cond_0
    return-void
.end method
