.class Lcom/dolphin/browser/bookmark/aw;
.super Ljava/lang/Object;
.source "BookmarkHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/b/d;

.field final synthetic b:Lcom/dolphin/browser/bookmark/at;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/at;Lcom/dolphin/browser/bookmark/b/d;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/aw;->b:Lcom/dolphin/browser/bookmark/at;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/aw;->a:Lcom/dolphin/browser/bookmark/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aw;->a:Lcom/dolphin/browser/bookmark/b/d;

    invoke-virtual {v0, p4, p5, p3}, Lcom/dolphin/browser/bookmark/b/d;->a(JI)V

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aw;->a:Lcom/dolphin/browser/bookmark/b/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/b/d;->notifyDataSetInvalidated()V

    .line 290
    return-void
.end method
