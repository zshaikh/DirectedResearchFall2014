.class public Lcom/dolphin/browser/k/d;
.super Ljava/util/Observable;
.source "GestureSonarSwitchObservable.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 12
    iget-boolean v0, p0, Lcom/dolphin/browser/k/d;->a:Z

    if-eq v0, p1, :cond_0

    .line 13
    iput-boolean p1, p0, Lcom/dolphin/browser/k/d;->a:Z

    .line 14
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    iget-boolean v1, p0, Lcom/dolphin/browser/k/d;->a:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->e(Z)V

    .line 16
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    iget-boolean v1, p0, Lcom/dolphin/browser/k/d;->a:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->f(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/dolphin/browser/k/d;->setChanged()V

    .line 19
    invoke-virtual {p0}, Lcom/dolphin/browser/k/d;->notifyObservers()V

    .line 21
    :cond_0
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/dolphin/browser/k/d;->a:Z

    return v0
.end method
