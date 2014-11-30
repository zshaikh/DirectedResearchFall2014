.class Lcom/dolphin/browser/download/ui/t;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/t;->c:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/t;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/dolphin/browser/download/ui/t;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 891
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/t;->c:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->e(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/t;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/dolphin/browser/download/ui/t;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/download/e;->b(Landroid/content/Context;J)V

    .line 892
    return-void
.end method
