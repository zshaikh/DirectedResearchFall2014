.class Lcom/google/ads/b/aj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/ads/b/ah;


# direct methods
.method constructor <init>(Lcom/google/ads/b/ah;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/ads/b/aj;->a:Lcom/google/ads/b/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/google/ads/b/ae;

    iget-object v1, p0, Lcom/google/ads/b/aj;->a:Lcom/google/ads/b/ah;

    invoke-static {v1}, Lcom/google/ads/b/ah;->a(Lcom/google/ads/b/ah;)Lcom/google/ads/b/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/b/w;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/b/aj;->a:Lcom/google/ads/b/ah;

    invoke-static {v2}, Lcom/google/ads/b/ah;->b(Lcom/google/ads/b/ah;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/b/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method
