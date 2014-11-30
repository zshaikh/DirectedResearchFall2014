.class Lcom/dolphin/browser/t/ag;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IHttpAuthHandler;

.field final synthetic b:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)V
    .locals 0

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/dolphin/browser/t/ag;->b:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/ag;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2734
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/t/ag;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IHttpAuthHandler;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2738
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/t/ag;->b:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->d()V

    .line 2739
    iget-object v0, p0, Lcom/dolphin/browser/t/ag;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2740
    iget-object v0, p0, Lcom/dolphin/browser/t/ag;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)Lcom/dolphin/browser/core/IHttpAuthHandler;

    .line 2741
    return-void

    .line 2735
    :catch_0
    move-exception v0

    .line 2736
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
