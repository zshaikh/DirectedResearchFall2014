.class final Lcom/dolphin/browser/j/b/l;
.super Ljava/lang/Object;
.source "SiteCertRevocationValidator.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/dolphin/browser/j/b/k;

.field final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/dolphin/browser/j/b/k;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p3, :cond_0

    .line 60
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object p3

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/j/b/l;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/dolphin/browser/j/b/l;->b:Lcom/dolphin/browser/j/b/k;

    .line 64
    iput-object p3, p0, Lcom/dolphin/browser/j/b/l;->c:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/j/b/l;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/j/b/n;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/j/b/n;-><init>(Lcom/dolphin/browser/j/b/l;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 86
    return-void
.end method

.method a(Ljava/security/cert/X509Certificate;Z)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/j/b/l;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/j/b/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/j/b/m;-><init>(Lcom/dolphin/browser/j/b/l;Ljava/security/cert/X509Certificate;Z)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/j/b/l;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method
