.class Lcom/dolphin/browser/download/ui/y;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Lcom/dolphin/browser/share/box/n;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/y;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/b;)V
    .locals 6

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1091
    :goto_0
    return-void

    .line 1048
    :cond_0
    const/4 v0, 0x0

    .line 1049
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->j(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/b/a/a/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->j(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/b/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/b;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/b/a/a/b;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1050
    const/4 v0, 0x1

    .line 1052
    :cond_1
    const-string v1, "box share"

    const-string v2, "choose"

    const-string v3, "folder"

    invoke-static {v1, v2, v3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1057
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/b/a/a/b;)Lcom/b/a/a/b;

    .line 1058
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/y;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/y;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/b/a/a/b;->a()J

    move-result-wide v3

    new-instance v5, Lcom/dolphin/browser/download/ui/z;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/download/ui/z;-><init>(Lcom/dolphin/browser/download/ui/y;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/q/a/j;->a(Landroid/content/Context;Ljava/lang/String;JLcom/dolphin/browser/q/a/i;)V

    goto :goto_0
.end method
