.class Lcom/dolphin/browser/download/ui/at;
.super Ljava/lang/Object;
.source "DownloadPathDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/download/e;

.field final synthetic c:Lcom/dolphin/browser/download/ui/ao;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/ao;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/at;->c:Lcom/dolphin/browser/download/ui/ao;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/at;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/dolphin/browser/download/ui/at;->b:Lcom/dolphin/browser/download/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/at;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/at;->b:Lcom/dolphin/browser/download/e;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/at;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/at;->c:Lcom/dolphin/browser/download/ui/ao;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->c(Landroid/content/Context;)V

    .line 284
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/at;->c:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v2}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->c(Ljava/io/File;)Z

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/at;->c:Lcom/dolphin/browser/download/ui/ao;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ao;->f(Lcom/dolphin/browser/download/ui/ao;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/at;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/at;->c:Lcom/dolphin/browser/download/ui/ao;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
