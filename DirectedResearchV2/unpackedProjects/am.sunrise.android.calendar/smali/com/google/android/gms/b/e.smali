.class public Lcom/google/android/gms/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/b/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/e;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/bk;->d:Lcom/google/android/gms/b/bk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bj;->a(Lcom/google/android/gms/b/bk;)V

    invoke-static {p1}, Lcom/google/android/gms/b/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/b/y;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/bk;->a:Lcom/google/android/gms/b/bk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bj;->a(Lcom/google/android/gms/b/bk;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_0
    const-string v0, " HitBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/e;->a:Ljava/util/Map;

    return-object v0
.end method
