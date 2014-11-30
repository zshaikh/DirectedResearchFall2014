.class Lcom/dolphin/browser/tablist/bb;
.super Landroid/database/ContentObserver;
.source "RecentTablistView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ay;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/ay;)V
    .locals 1

    .prologue
    .line 427
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bb;->a:Lcom/dolphin/browser/tablist/ay;

    .line 429
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 430
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bb;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ay;->h()V

    .line 442
    return-void
.end method
