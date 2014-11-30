.class final Lcom/dolphin/browser/bookmark/ba;
.super Ljava/lang/Object;
.source "BookmarkHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/j;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ba;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ba;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->h()V

    .line 543
    const-string v0, "bookmark"

    const-string v1, "deletehistory"

    const-string v2, "ok"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method
