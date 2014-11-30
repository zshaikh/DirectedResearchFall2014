.class Lcom/dolphin/browser/search/ui/aa;
.super Ljava/lang/Object;
.source "SearchFloatingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/dolphin/browser/search/ui/SearchFloatingView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/SearchFloatingView;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/aa;->b:Lcom/dolphin/browser/search/ui/SearchFloatingView;

    iput-object p2, p0, Lcom/dolphin/browser/search/ui/aa;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/aa;->b:Lcom/dolphin/browser/search/ui/SearchFloatingView;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/aa;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "SearchFloatingView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/aa;->a:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
