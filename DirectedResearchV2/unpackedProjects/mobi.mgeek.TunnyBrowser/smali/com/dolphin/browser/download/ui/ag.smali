.class Lcom/dolphin/browser/download/ui/ag;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ag;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ag;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->d(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/ui/bc;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/dolphin/browser/download/ui/bc;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ag;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->f(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/d;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ag;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/d;)V

    .line 433
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
