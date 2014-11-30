.class Lcom/dolphin/browser/share/a/q;
.super Ljava/lang/Object;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/bg;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/dolphin/browser/share/a/q;->a:Lcom/dolphin/browser/share/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/dolphin/browser/share/a/q;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->f(Lcom/dolphin/browser/share/a/k;)V

    .line 418
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/dolphin/browser/share/a/q;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->d(Lcom/dolphin/browser/share/a/k;)V

    .line 408
    iget-object v0, p0, Lcom/dolphin/browser/share/a/q;->a:Lcom/dolphin/browser/share/a/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0594

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 411
    const-string v0, "evernote share"

    const-string v1, "gettag"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/share/a/q;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->d(Lcom/dolphin/browser/share/a/k;)V

    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/share/a/q;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->e(Lcom/dolphin/browser/share/a/k;)V

    .line 401
    const-string v0, "evernote share"

    const-string v1, "gettag"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method
