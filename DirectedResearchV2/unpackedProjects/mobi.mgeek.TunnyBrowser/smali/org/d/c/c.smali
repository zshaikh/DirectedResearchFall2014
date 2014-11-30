.class public Lorg/d/c/c;
.super Ljava/lang/Object;
.source "BaseStringExtractorImpl.java"

# interfaces
.implements Lorg/d/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lorg/d/d/c;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lorg/d/d/e;

    invoke-direct {v0}, Lorg/d/d/e;-><init>()V

    .line 33
    invoke-virtual {p1}, Lorg/d/d/c;->g()Lorg/d/d/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/d/d/e;->a(Lorg/d/d/e;)V

    .line 34
    invoke-virtual {p1}, Lorg/d/d/c;->f()Lorg/d/d/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/d/d/e;->a(Lorg/d/d/e;)V

    .line 35
    new-instance v1, Lorg/d/d/e;

    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/d/d/e;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/d/d/e;->a(Lorg/d/d/e;)V

    .line 36
    invoke-virtual {v0}, Lorg/d/d/e;->c()Lorg/d/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/d/d/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/d/d/c;)V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Cannot extract base string from null object"

    invoke-static {p1, v0}, Lorg/d/g/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Lorg/d/b/c;

    invoke-direct {v0, p1}, Lorg/d/b/c;-><init>(Lorg/d/d/c;)V

    throw v0

    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/d/d/c;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/d/c/c;->c(Lorg/d/d/c;)V

    .line 24
    invoke-virtual {p1}, Lorg/d/d/c;->c()Lorg/d/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/d/d/j;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/d/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lorg/d/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/d/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-direct {p0, p1}, Lorg/d/c/c;->b(Lorg/d/d/c;)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v3, "%s&%s&%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
