.class public Lcom/dolphin/browser/k/a;
.super Ljava/util/Observable;
.source "BadgeViewStateObservable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/dolphin/browser/k/a;->setChanged()V

    .line 11
    invoke-virtual {p0}, Lcom/dolphin/browser/k/a;->notifyObservers()V

    .line 12
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/k/a;->setChanged()V

    .line 17
    invoke-virtual {p0}, Lcom/dolphin/browser/k/a;->notifyObservers()V

    .line 18
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/dolphin/browser/k/a;->setChanged()V

    .line 23
    invoke-virtual {p0}, Lcom/dolphin/browser/k/a;->notifyObservers()V

    .line 24
    return-void
.end method
