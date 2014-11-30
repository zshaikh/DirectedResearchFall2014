.class Lcom/dolphin/browser/download/j;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/download/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/e;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/dolphin/browser/download/j;->b:Lcom/dolphin/browser/download/e;

    iput-object p2, p0, Lcom/dolphin/browser/download/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/dolphin/browser/download/j;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 501
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 503
    return-void
.end method
