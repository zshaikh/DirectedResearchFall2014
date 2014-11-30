.class Lcom/dolphin/browser/t/y;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Z)V
    .locals 0

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/dolphin/browser/t/y;->b:Lcom/dolphin/browser/t/l;

    iput-boolean p2, p0, Lcom/dolphin/browser/t/y;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2308
    iget-object v0, p0, Lcom/dolphin/browser/t/y;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2309
    iget-object v0, p0, Lcom/dolphin/browser/t/y;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->f(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 2312
    iget-boolean v0, p0, Lcom/dolphin/browser/t/y;->a:Z

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/dolphin/browser/t/y;->b:Lcom/dolphin/browser/t/l;

    iget-object v1, p0, Lcom/dolphin/browser/t/y;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->k(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/t/y;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v2}, Lcom/dolphin/browser/t/l;->l(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/ISslErrorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/t/y;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v3}, Lcom/dolphin/browser/t/l;->m(Lcom/dolphin/browser/t/l;)Landroid/net/http/SslError;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 2317
    :cond_0
    return-void
.end method
