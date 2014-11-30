.class Lcom/dolphin/browser/bookmark/cv;
.super Ljava/lang/Object;
.source "TabSyncActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/TabSyncActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cv;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cv;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b(Lcom/dolphin/browser/bookmark/TabSyncActivity;)Lcom/dolphin/browser/u/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/u/a;->a(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    .line 349
    instance-of v1, p2, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cv;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b(Lcom/dolphin/browser/bookmark/TabSyncActivity;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v0

    .line 356
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/cv;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b(Lcom/dolphin/browser/bookmark/TabSyncActivity;J)V

    goto :goto_0
.end method
