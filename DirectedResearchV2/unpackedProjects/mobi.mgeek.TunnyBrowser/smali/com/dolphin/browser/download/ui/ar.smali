.class Lcom/dolphin/browser/download/ui/ar;
.super Ljava/lang/Object;
.source "DownloadPathDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/ao;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/ao;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ar;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ar;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/ao;->b()V

    .line 142
    const-string v0, "download management"

    const-string v1, "downloaddialog"

    const-string v2, "newdirectory"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
