.class public Lcom/dolphin/browser/k/e;
.super Ljava/util/Observable;
.source "HomePageStateObservable.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/dolphin/browser/k/e;->a:Z

    if-eq v0, p1, :cond_0

    .line 33
    iput-boolean p1, p0, Lcom/dolphin/browser/k/e;->a:Z

    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/k/e;->setChanged()V

    .line 35
    invoke-virtual {p0}, Lcom/dolphin/browser/k/e;->notifyObservers()V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getType()I

    move-result v0

    .line 27
    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/dolphin/browser/k/e;->a(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dolphin/browser/k/e;->a:Z

    return v0
.end method
