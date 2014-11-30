.class Lcom/dolphin/browser/bookmark/b;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "editbookmark"

    .line 104
    :goto_0
    const-string v1, "bookmark"

    const-string v2, "ok"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v3}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->finish()V

    .line 110
    :cond_0
    invoke-static {v3}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 111
    return-void

    .line 102
    :cond_1
    const-string v0, "addbookmark"

    goto :goto_0
.end method
