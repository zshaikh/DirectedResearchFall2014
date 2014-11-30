.class public Lcom/dolphin/browser/k/b;
.super Ljava/util/Observable;
.source "FakeTitleBarShowStateObservable.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/dolphin/browser/k/b;->a:Z

    if-eq v0, p1, :cond_0

    .line 12
    iput-boolean p1, p0, Lcom/dolphin/browser/k/b;->a:Z

    .line 13
    invoke-virtual {p0}, Lcom/dolphin/browser/k/b;->setChanged()V

    .line 14
    invoke-virtual {p0}, Lcom/dolphin/browser/k/b;->notifyObservers()V

    .line 16
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/dolphin/browser/k/b;->a:Z

    return v0
.end method
