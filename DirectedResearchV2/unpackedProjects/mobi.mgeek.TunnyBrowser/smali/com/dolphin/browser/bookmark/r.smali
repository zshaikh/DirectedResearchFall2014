.class Lcom/dolphin/browser/bookmark/r;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/r;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/r;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bl;->a()V

    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/r;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/r;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bl;->c()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;JZ)V

    .line 203
    const-string v0, "bookmark"

    const-string v1, "clickbtn"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method
