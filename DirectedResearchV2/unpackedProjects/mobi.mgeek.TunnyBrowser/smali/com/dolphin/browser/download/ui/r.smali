.class Lcom/dolphin/browser/download/ui/r;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;I)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/r;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iput p2, p0, Lcom/dolphin/browser/download/ui/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/r;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->d(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/ui/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/r;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->d(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/ui/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bc;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/download/ui/r;->a:I

    if-le v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/r;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->c(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/download/ui/r;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 330
    :cond_0
    return-void
.end method
