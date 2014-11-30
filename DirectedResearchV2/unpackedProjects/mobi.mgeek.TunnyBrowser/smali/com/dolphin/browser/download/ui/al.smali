.class Lcom/dolphin/browser/download/ui/al;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/ak;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/ak;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/al;->a:Lcom/dolphin/browser/download/ui/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/al;->a:Lcom/dolphin/browser/download/ui/ak;

    iget-object v0, v0, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->closeContextMenu()V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/al;->a:Lcom/dolphin/browser/download/ui/ak;

    iget-object v0, v0, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/al;->a:Lcom/dolphin/browser/download/ui/ak;

    iget-object v1, v1, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->openContextMenu(Landroid/view/View;)V

    .line 128
    return-void
.end method
