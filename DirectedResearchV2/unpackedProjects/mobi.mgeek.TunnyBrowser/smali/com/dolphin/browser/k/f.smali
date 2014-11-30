.class public Lcom/dolphin/browser/k/f;
.super Ljava/util/Observable;
.source "LoginObservable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/dolphin/browser/k/f;->setChanged()V

    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/k/f;->notifyObservers()V

    .line 17
    return-void
.end method
