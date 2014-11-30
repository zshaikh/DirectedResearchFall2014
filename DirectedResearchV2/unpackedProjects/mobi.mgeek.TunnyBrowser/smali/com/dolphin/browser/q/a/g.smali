.class Lcom/dolphin/browser/q/a/g;
.super Ljava/lang/Object;
.source "BoxAuthDialog.java"

# interfaces
.implements Lcom/b/a/c/d;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/dolphin/browser/q/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/b;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/browser/q/a/g;->d:Lcom/dolphin/browser/q/a/b;

    iput-object p2, p0, Lcom/dolphin/browser/q/a/g;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/dolphin/browser/q/a/g;->b:Ljava/lang/String;

    iput p4, p0, Lcom/dolphin/browser/q/a/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/d;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 208
    const-string v0, "get_auth_token_ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/q/a/g;->d:Lcom/dolphin/browser/q/a/b;

    invoke-virtual {p1}, Lcom/b/a/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/a/b;->b(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "error_unknown_http_response_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/q/a/g;->a:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/q/a/h;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/a/h;-><init>(Lcom/dolphin/browser/q/a/g;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/a/g;->d:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->b(Lcom/dolphin/browser/q/a/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    goto :goto_0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/q/a/g;->d:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->e(Lcom/dolphin/browser/q/a/b;)V

    .line 226
    return-void
.end method
