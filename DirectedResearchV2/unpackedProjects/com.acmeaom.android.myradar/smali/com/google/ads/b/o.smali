.class Lcom/google/ads/b/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/b/n;


# direct methods
.method constructor <init>(Lcom/google/ads/b/n;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/ads/b/o;->a:Lcom/google/ads/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/ads/b/o;->a:Lcom/google/ads/b/n;

    invoke-static {v0}, Lcom/google/ads/b/n;->b(Lcom/google/ads/b/n;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a;

    iget-object v1, p0, Lcom/google/ads/b/o;->a:Lcom/google/ads/b/n;

    invoke-static {v1}, Lcom/google/ads/b/n;->c(Lcom/google/ads/b/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/a;->loadUrl(Ljava/lang/String;)V

    .line 852
    return-void
.end method
