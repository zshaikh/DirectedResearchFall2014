.class Lcom/dolphin/browser/download/ui/aq;
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
    .line 119
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/aq;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aq;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aq;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/aq;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/ao;->e(Lcom/dolphin/browser/download/ui/ao;)Lcom/dolphin/browser/download/ui/av;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/aq;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/ao;->e(Lcom/dolphin/browser/download/ui/ao;)Lcom/dolphin/browser/download/ui/av;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/download/ui/av;->a(Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aq;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/ao;->dismiss()V

    .line 132
    return-void
.end method
