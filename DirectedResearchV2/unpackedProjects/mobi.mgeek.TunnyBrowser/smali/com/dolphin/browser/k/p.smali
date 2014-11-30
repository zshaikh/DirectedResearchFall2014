.class public Lcom/dolphin/browser/k/p;
.super Ljava/util/Observable;
.source "TabLoadStateObservable.java"


# instance fields
.field private a:Z

.field private b:Z


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
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/dolphin/browser/k/p;->a:Z

    if-eq v0, p1, :cond_0

    .line 14
    iput-boolean p1, p0, Lcom/dolphin/browser/k/p;->a:Z

    .line 15
    invoke-virtual {p0}, Lcom/dolphin/browser/k/p;->setChanged()V

    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/k/p;->notifyObservers()V

    .line 18
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/dolphin/browser/k/p;->b:Z

    if-eq v0, p1, :cond_0

    .line 28
    iput-boolean p1, p0, Lcom/dolphin/browser/k/p;->b:Z

    .line 29
    invoke-virtual {p0}, Lcom/dolphin/browser/k/p;->setChanged()V

    .line 30
    invoke-virtual {p0}, Lcom/dolphin/browser/k/p;->notifyObservers()V

    .line 32
    :cond_0
    return-void
.end method
