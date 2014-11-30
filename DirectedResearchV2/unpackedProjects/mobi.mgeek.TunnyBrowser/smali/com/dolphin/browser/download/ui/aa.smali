.class Lcom/dolphin/browser/download/ui/aa;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/aa;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 1098
    const-string v0, "box share"

    const-string v1, "back"

    const-string v2, "uploadfile"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    return-void
.end method
