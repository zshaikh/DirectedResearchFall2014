.class public Lcom/google/ads/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 25
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    if-nez v0, :cond_0

    .line 27
    const-string v0, "Error: App event with no name parameter."

    invoke-static {v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v1, "info"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/b/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method