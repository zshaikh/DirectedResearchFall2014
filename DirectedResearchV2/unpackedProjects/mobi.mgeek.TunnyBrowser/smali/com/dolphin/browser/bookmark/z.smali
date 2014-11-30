.class Lcom/dolphin/browser/bookmark/z;
.super Lcom/dolphin/browser/c/a;
.source "BookmarkEntranceActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/z;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/z;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1410
    const-string v0, "bookmark"

    const-string v1, "clickdownmenu"

    const-string v2, "import_export"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v0, 0x1

    return v0
.end method
