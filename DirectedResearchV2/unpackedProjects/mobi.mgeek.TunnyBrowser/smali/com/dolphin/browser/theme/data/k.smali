.class Lcom/dolphin/browser/theme/data/k;
.super Landroid/database/ContentObserver;
.source "DownloadBehavior.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/data/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/data/j;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/k;->a:Lcom/dolphin/browser/theme/data/j;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/k;->a:Lcom/dolphin/browser/theme/data/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/data/j;->a(Lcom/dolphin/browser/theme/data/j;Z)V

    .line 135
    return-void
.end method
