.class public Lcom/google/ads/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "u"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Could not get URL from track gmsg."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 37
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/ae;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
