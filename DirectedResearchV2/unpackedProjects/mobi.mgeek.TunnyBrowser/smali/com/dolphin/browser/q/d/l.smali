.class Lcom/dolphin/browser/q/d/l;
.super Lcom/dolphin/browser/share/b;
.source "Twitter.java"


# instance fields
.field final synthetic b:Lcom/dolphin/browser/share/g;

.field final synthetic c:Lcom/dolphin/browser/q/d/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/k;Lcom/dolphin/browser/share/g;Lcom/dolphin/browser/share/g;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/q/d/l;->c:Lcom/dolphin/browser/q/d/k;

    iput-object p3, p0, Lcom/dolphin/browser/q/d/l;->b:Lcom/dolphin/browser/share/g;

    invoke-direct {p0, p2}, Lcom/dolphin/browser/share/b;-><init>(Lcom/dolphin/browser/share/g;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 70
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Landroid/os/Bundle;

    .line 72
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/q/d/l;->c:Lcom/dolphin/browser/q/d/k;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/q/d/k;->a(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/q/d/l;->c:Lcom/dolphin/browser/q/d/k;

    const-string v2, "secret_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/d/k;->b(Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/l;->b:Lcom/dolphin/browser/share/g;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/q/d/l;->c:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/q/d/l;->b:Lcom/dolphin/browser/share/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/g;->a(Ljava/lang/Object;)V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    new-instance v0, Lcom/dolphin/browser/q/d/y;

    const-string v1, "failed to receive oauth token"

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/d/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/d/l;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/dolphin/browser/share/b;->a(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method
