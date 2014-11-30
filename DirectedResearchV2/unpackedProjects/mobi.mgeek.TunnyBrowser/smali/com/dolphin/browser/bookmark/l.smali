.class Lcom/dolphin/browser/bookmark/l;
.super Landroid/database/ContentObserver;
.source "BaseBookmarkAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/j;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/j;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/l;->a:Lcom/dolphin/browser/bookmark/j;

    .line 321
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 322
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/l;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->y()V

    .line 332
    return-void
.end method
