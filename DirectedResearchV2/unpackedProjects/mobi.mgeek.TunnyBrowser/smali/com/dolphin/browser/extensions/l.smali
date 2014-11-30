.class Lcom/dolphin/browser/extensions/l;
.super Ljava/lang/Object;
.source "DownloadCompleteReceiver.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/p;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dolphin/browser/extensions/l;->a:Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Lcom/dolphin/browser/extensions/k;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/l;-><init>(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/dolphin/browser/extensions/l;->a:Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;

    invoke-static {}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v3, v0}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->c(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    :cond_1
    return-void
.end method
