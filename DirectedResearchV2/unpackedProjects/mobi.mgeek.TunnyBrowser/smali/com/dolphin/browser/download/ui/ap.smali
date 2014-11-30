.class Lcom/dolphin/browser/download/ui/ap;
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
    .line 98
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    if-eq v0, v1, :cond_0

    .line 105
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    sget-object v1, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;Ljava/io/File;)Ljava/io/File;

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->b(Lcom/dolphin/browser/download/ui/ao;)V

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->c(Lcom/dolphin/browser/download/ui/ao;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->d(Lcom/dolphin/browser/download/ui/ao;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->c(Lcom/dolphin/browser/download/ui/ao;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 116
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ap;->a:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;Ljava/io/File;)Ljava/io/File;

    goto :goto_0
.end method
