.class public Lorg/d/d/c;
.super Lorg/d/d/f;
.source "OAuthRequest.java"


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
.method public constructor <init>(Lorg/d/d/j;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/d/d/f;-><init>(Lorg/d/d/j;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/d/d/c;->a:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 44
    const-string v0, "oauth_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    return-object p1

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OAuth parameters must either be \'%s\' or start with \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "scope"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "oauth_"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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

    .prologue
    .line 61
    iget-object v0, p0, Lorg/d/d/c;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/d/d/c;->a:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/d/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lorg/d/d/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c()Lorg/d/d/j;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->c()Lorg/d/d/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lorg/d/d/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lorg/d/d/e;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->f()Lorg/d/d/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Lorg/d/d/e;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->g()Lorg/d/d/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lorg/d/d/g;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/d/d/f;->i()Lorg/d/d/g;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string v0, "@OAuthRequest(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/d/d/c;->c()Lorg/d/d/j;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/d/d/c;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
