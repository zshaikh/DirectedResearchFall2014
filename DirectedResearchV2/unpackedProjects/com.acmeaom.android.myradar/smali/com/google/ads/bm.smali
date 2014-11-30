.class Lcom/google/ads/bm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field final synthetic b:Lcom/google/ads/e;


# direct methods
.method constructor <init>(Lcom/google/ads/e;Lcom/google/ads/c;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/ads/bm;->b:Lcom/google/ads/e;

    iput-object p2, p0, Lcom/google/ads/bm;->a:Lcom/google/ads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/ads/bm;->b:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->b(Lcom/google/ads/e;)Lcom/google/ads/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/bm;->a:Lcom/google/ads/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->b(Lcom/google/ads/c;)V

    .line 387
    return-void
.end method
