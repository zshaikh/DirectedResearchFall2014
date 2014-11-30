.class Lcom/dolphin/browser/share/box/e;
.super Ljava/lang/Object;
.source "BoxShareViewContent.java"

# interfaces
.implements Lcom/b/a/c/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/b;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dolphin/browser/share/box/e;->a:Lcom/dolphin/browser/share/box/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/share/box/e;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/b;->c(Lcom/dolphin/browser/share/box/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 291
    const-string v0, "listing_ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/share/box/e;->a:Lcom/dolphin/browser/share/box/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    const-string v0, "BoxShareViewContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get tree, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "box share"

    const-string v1, "getfolder"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/box/e;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0, p1}, Lcom/dolphin/browser/share/box/b;->a(Lcom/dolphin/browser/share/box/b;Lcom/b/a/a/b;)V

    .line 304
    const-string v0, "box share"

    const-string v1, "getfolder"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/share/box/e;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/b;->c(Lcom/dolphin/browser/share/box/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 278
    const-string v0, "BoxShareViewContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get tree - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/share/box/e;->a:Lcom/dolphin/browser/share/box/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 282
    const-string v0, "box share"

    const-string v1, "getfolder"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method
