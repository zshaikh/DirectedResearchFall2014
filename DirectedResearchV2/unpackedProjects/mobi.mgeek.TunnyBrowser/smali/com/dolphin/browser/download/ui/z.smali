.class Lcom/dolphin/browser/download/ui/z;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Lcom/dolphin/browser/q/a/i;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/y;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/y;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/z;->a:Lcom/dolphin/browser/download/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/z;->a:Lcom/dolphin/browser/download/ui/y;

    iget-object v0, v0, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/z;->a:Lcom/dolphin/browser/download/ui/y;

    iget-object v1, v1, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0599

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/download/ui/z;->a:Lcom/dolphin/browser/download/ui/y;

    iget-object v5, v5, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e00ce

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1081
    const-string v0, "box share"

    const-string v1, "uploadfile"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/z;->a:Lcom/dolphin/browser/download/ui/y;

    iget-object v0, v0, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/z;->a:Lcom/dolphin/browser/download/ui/y;

    iget-object v1, v1, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e059a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/download/ui/z;->a:Lcom/dolphin/browser/download/ui/y;

    iget-object v5, v5, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e00ce

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1068
    const-string v0, "box share"

    const-string v1, "uploadfile"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-void
.end method
