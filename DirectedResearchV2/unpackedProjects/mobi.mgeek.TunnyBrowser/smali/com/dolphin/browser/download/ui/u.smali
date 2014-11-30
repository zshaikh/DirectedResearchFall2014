.class Lcom/dolphin/browser/download/ui/u;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/dolphin/browser/download/d;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/dolphin/browser/download/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/widget/CheckBox;Lcom/dolphin/browser/download/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/u;->d:Lcom/dolphin/browser/download/ui/DownloadActivity;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/u;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/dolphin/browser/download/ui/u;->b:Lcom/dolphin/browser/download/d;

    iput-object p4, p0, Lcom/dolphin/browser/download/ui/u;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 928
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/u;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/u;->d:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->e(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/u;->b:Lcom/dolphin/browser/download/d;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->f(Ljava/lang/String;)Z

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/u;->d:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->e(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/u;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/u;->b:Lcom/dolphin/browser/download/d;

    invoke-virtual {v2}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;J)V

    .line 934
    return-void
.end method
