.class Lcom/dolphin/browser/sidebar/o;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/o;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    instance-of v1, p2, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v1, :cond_1

    .line 277
    const-string v0, "bookmark"

    .line 281
    :cond_0
    :goto_0
    const-string v1, "bookmark bar"

    const-string v2, "bookmarklongpress"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_1
    instance-of v1, p2, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v1, :cond_0

    .line 279
    const-string v0, "folder"

    goto :goto_0
.end method
