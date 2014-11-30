.class Lcom/dolphin/browser/provider/ab;
.super Landroid/database/ContentObserver;
.source "SpeedDialManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/provider/y;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/provider/y;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/dolphin/browser/provider/ab;->a:Lcom/dolphin/browser/provider/y;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/provider/ab;->a:Lcom/dolphin/browser/provider/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/y;->a(Lcom/dolphin/browser/provider/y;Z)V

    .line 447
    return-void
.end method
