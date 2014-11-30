.class public Lcom/dolphin/browser/k/m;
.super Ljava/util/Observable;
.source "TabBackStateObservable.java"


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
    .locals 2

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/dolphin/browser/k/m;->a:Z

    if-eq v0, p1, :cond_0

    .line 13
    iput-boolean p1, p0, Lcom/dolphin/browser/k/m;->a:Z

    .line 14
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    iget-boolean v1, p0, Lcom/dolphin/browser/k/m;->a:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->a(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/k/m;->setChanged()V

    .line 17
    invoke-virtual {p0}, Lcom/dolphin/browser/k/m;->notifyObservers()V

    .line 19
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/dolphin/browser/k/m;->a:Z

    return v0
.end method
