.class public final Lcom/b/a/e/b;
.super Ljava/lang/Object;
.source "BoxUriBuilder.java"


# direct methods
.method public static a()Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Lcom/b/a/e/a;->a()Lcom/b/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/b/a/e/b;->a()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api_key"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 60
    invoke-static {p0}, Lcom/b/a/e/b;->a(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/b/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method
