.class Lcom/dolphin/browser/q/a/e;
.super Ljava/lang/Object;
.source "BoxAuthDialog.java"

# interfaces
.implements Lcom/b/a/c/e;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/b;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dolphin/browser/q/a/e;->a:Lcom/dolphin/browser/q/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/q/a/e;->a:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->b(Lcom/dolphin/browser/q/a/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/q/a/e;->a:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->c(Lcom/dolphin/browser/q/a/b;)V

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    const-string v0, "get_ticket_ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/q/a/e;->a:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0, p1}, Lcom/dolphin/browser/q/a/b;->a(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/a/e;->a:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->c(Lcom/dolphin/browser/q/a/b;)V

    goto :goto_0
.end method
