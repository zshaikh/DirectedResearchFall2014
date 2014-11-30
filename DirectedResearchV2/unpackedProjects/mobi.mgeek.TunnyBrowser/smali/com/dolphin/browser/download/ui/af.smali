.class Lcom/dolphin/browser/download/ui/af;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/af;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

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
    .line 413
    instance-of v0, p2, Lcom/dolphin/browser/download/ui/bb;

    if-eqz v0, :cond_0

    .line 414
    check-cast p2, Lcom/dolphin/browser/download/ui/bb;

    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/af;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-virtual {p2}, Lcom/dolphin/browser/download/ui/bb;->b()Lcom/dolphin/browser/download/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/d;)V

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    check-cast p2, Lcom/dolphin/browser/download/ui/bd;

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/af;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-virtual {p2}, Lcom/dolphin/browser/download/ui/bd;->a()Lcom/dolphin/browser/download/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/d;)V

    goto :goto_0
.end method
