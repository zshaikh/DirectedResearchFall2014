.class Lcom/dolphin/browser/bookmark/x;
.super Lcom/dolphin/browser/c/a;
.source "BookmarkEntranceActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/x;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1381
    const-string v0, "bookmark"

    const-string v1, "clickdownmenu"

    const-string v2, "edit"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/x;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0, v3}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Z)V

    .line 1385
    return v3
.end method
