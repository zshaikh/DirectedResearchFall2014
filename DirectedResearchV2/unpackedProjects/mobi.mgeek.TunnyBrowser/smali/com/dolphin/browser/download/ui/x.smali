.class Lcom/dolphin/browser/download/ui/x;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Lcom/b/a/c/c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/x;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/x;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->i(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 1014
    const-string v0, "listing_ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/x;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1019
    const-string v0, "DownloadedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get tree, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v0, "box share"

    const-string v1, "getfolder"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/x;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/x;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;Lcom/b/a/a/b;)V

    .line 1028
    const-string v0, "box share"

    const-string v1, "getfolder"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/x;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->i(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 1001
    const-string v0, "DownloadedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get tree - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/x;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1005
    const-string v0, "box share"

    const-string v1, "getfolder"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    return-void
.end method
