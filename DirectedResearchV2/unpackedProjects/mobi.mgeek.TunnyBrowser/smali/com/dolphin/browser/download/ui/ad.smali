.class Lcom/dolphin/browser/download/ui/ad;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ad;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 387
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800e8

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ad;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/b;)Lcom/dolphin/browser/download/b;

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ad;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->b:Lcom/dolphin/browser/download/ui/am;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/ui/am;)V

    .line 391
    :cond_0
    return-void
.end method
