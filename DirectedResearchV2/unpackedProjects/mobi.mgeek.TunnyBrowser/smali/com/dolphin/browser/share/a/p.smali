.class Lcom/dolphin/browser/share/a/p;
.super Ljava/lang/Object;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/bf;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/dolphin/browser/share/a/p;->a:Lcom/dolphin/browser/share/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/share/a/p;->a:Lcom/dolphin/browser/share/a/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/a/k;->a(Z)V

    .line 359
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/share/a/p;->a:Lcom/dolphin/browser/share/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/a/k;->a(Lcom/c/b/c/l;)V

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/share/a/p;->a:Lcom/dolphin/browser/share/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/a/k;->a(Z)V

    .line 352
    const-string v0, "evernote share"

    const-string v1, "getnotebook"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/share/a/p;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->a(Lcom/dolphin/browser/share/a/k;)Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->c()Lcom/c/b/c/l;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/dolphin/browser/share/a/p;->a:Lcom/dolphin/browser/share/a/k;

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/l;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/a/k;->a(Lcom/c/b/c/l;)V

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/share/a/p;->a:Lcom/dolphin/browser/share/a/k;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/share/a/k;->a(Z)V

    .line 343
    const-string v0, "evernote share"

    const-string v1, "getnotebook"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method
