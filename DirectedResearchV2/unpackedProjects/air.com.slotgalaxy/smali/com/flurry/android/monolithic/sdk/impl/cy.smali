.class public abstract Lcom/flurry/android/monolithic/sdk/impl/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/am;
.implements Lcom/flurry/android/monolithic/sdk/impl/co;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/monolithic/sdk/impl/ac;
.end method

.method public a(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/ac;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    .line 76
    :goto_0
    return-object v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->e()Lcom/flurry/android/monolithic/sdk/impl/db;

    move-result-object v0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->b(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/db;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cy;->c(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Landroid/os/Bundle;

    move-result-object v5

    .line 67
    if-nez v5, :cond_3

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    invoke-static {p4}, Lcom/flurry/android/monolithic/sdk/impl/ab;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/AdCreative;

    move-result-object v4

    .line 72
    if-nez v4, :cond_4

    move-object v0, v1

    .line 73
    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/cy;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/monolithic/sdk/impl/ac;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/monolithic/sdk/impl/cn;
.end method

.method protected a()Lcom/flurry/android/monolithic/sdk/impl/cx;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->c()Lcom/flurry/android/monolithic/sdk/impl/cx;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/db;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 90
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->a()Lcom/flurry/android/monolithic/sdk/impl/cx;

    move-result-object v0

    .line 86
    if-nez v0, :cond_2

    move v0, v1

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/cx;->a(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/db;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cn;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 37
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    .line 51
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->d()Lcom/flurry/android/monolithic/sdk/impl/db;

    move-result-object v0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->a(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/db;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cy;->b(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Landroid/os/Bundle;

    move-result-object v5

    .line 47
    if-nez v5, :cond_3

    move-object v0, v1

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/cy;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/monolithic/sdk/impl/cn;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cy;->d(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcom/flurry/android/monolithic/sdk/impl/cx;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->c()Lcom/flurry/android/monolithic/sdk/impl/cx;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/db;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 104
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->b()Lcom/flurry/android/monolithic/sdk/impl/cx;

    move-result-object v0

    .line 100
    if-nez v0, :cond_2

    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/cx;->a(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/db;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cy;->d(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/flurry/android/monolithic/sdk/impl/cx;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/cw;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/cw;-><init>()V

    return-object v0
.end method

.method protected d(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 178
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/il;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/flurry/android/monolithic/sdk/impl/db;
    .locals 6

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->f()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->g()Ljava/util/List;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->h()Ljava/util/List;

    move-result-object v3

    .line 123
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->i()Ljava/util/List;

    move-result-object v4

    .line 124
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->j()Ljava/util/List;

    move-result-object v5

    .line 125
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/db;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/db;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected e()Lcom/flurry/android/monolithic/sdk/impl/db;
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->f()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->k()Ljava/util/List;

    move-result-object v2

    .line 132
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->l()Ljava/util/List;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->m()Ljava/util/List;

    move-result-object v4

    .line 134
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/db;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/db;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/cu;",
            ">;"
        }
    .end annotation
.end method

.method protected h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract k()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/cu;",
            ">;"
        }
    .end annotation
.end method

.method protected l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cy;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract n()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract o()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
