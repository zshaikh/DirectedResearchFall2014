.class Lcom/dolphin/browser/t/af;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IHttpAuthHandler;

.field final synthetic b:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)V
    .locals 0

    .prologue
    .line 2742
    iput-object p1, p0, Lcom/dolphin/browser/t/af;->b:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/af;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2747
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/t/af;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IHttpAuthHandler;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2751
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/t/af;->b:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->d()V

    .line 2752
    iget-object v0, p0, Lcom/dolphin/browser/t/af;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2753
    iget-object v0, p0, Lcom/dolphin/browser/t/af;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)Lcom/dolphin/browser/core/IHttpAuthHandler;

    .line 2754
    return-void

    .line 2748
    :catch_0
    move-exception v0

    .line 2749
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
