.class Lcom/dolphin/browser/sidebar/n;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/n;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/n;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/bookmark/j;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    .line 259
    instance-of v1, p2, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/n;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1, v0}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;Lcom/dolphin/browser/bookmark/a/a;)V

    .line 261
    const-string v0, "bookmark bar"

    const-string v1, "clickpos"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    instance-of v1, p2, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/n;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1, v0}, Lcom/dolphin/browser/sidebar/i;->b(Lcom/dolphin/browser/sidebar/i;Lcom/dolphin/browser/bookmark/a/a;)V

    goto :goto_0
.end method
