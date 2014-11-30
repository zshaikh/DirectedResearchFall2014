.class Lcom/dolphin/browser/download/ui/v;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/v;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/v;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/v;->b:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->e(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/v;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;)V

    .line 958
    return-void
.end method
