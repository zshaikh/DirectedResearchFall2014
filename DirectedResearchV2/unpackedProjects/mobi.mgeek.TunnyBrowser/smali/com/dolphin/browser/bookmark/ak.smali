.class Lcom/dolphin/browser/bookmark/ak;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ak;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 743
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ak;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/bookmark/j;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    .line 745
    instance-of v1, p2, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ak;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/a/a;)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    instance-of v1, p2, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ak;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/a/a;)V

    goto :goto_0
.end method
