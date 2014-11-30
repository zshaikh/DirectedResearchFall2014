.class Lcom/dolphin/browser/download/ui/ai;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;J)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ai;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iput-wide p2, p0, Lcom/dolphin/browser/download/ui/ai;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ai;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/download/ui/ai;->a:J

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/downloads/t;->b(Landroid/content/ContentResolver;J)V

    .line 607
    const-string v0, "download management"

    const-string v1, "pausereminder"

    const-string v2, "continue"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method
