.class Lcom/dolphin/browser/download/ui/s;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/s;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/s;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->h(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    .line 793
    return-void
.end method
