.class Lcom/dolphin/browser/bookmark/ah;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Lcom/dolphin/browser/sync/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ah;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 574
    const-string v0, "BookmarkEntranceActivity"

    const-string v1, "onProgressChanged status: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ah;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ah;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 580
    return-void
.end method
