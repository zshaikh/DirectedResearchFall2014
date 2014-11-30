.class Lcom/dolphin/browser/download/ui/ae;
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
    .line 394
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ae;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

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
    .line 399
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/b;

    .line 400
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ae;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/b;)Lcom/dolphin/browser/download/b;

    .line 401
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ae;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v2, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    invoke-static {v1, v2}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/ui/am;)V

    .line 402
    invoke-virtual {v0}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 403
    const-string v1, "download management"

    const-string v2, "type"

    invoke-virtual {v0}, Lcom/dolphin/browser/download/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method
