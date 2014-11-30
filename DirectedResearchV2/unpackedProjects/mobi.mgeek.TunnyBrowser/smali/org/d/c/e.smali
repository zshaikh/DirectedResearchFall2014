.class public Lorg/d/c/e;
.super Ljava/lang/Object;
.source "HeaderExtractorImpl.java"

# interfaces
.implements Lorg/d/c/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lorg/d/d/c;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Cannot extract a header from a null object"

    invoke-static {p1, v0}, Lorg/d/g/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Lorg/d/b/c;

    invoke-direct {v0, p1}, Lorg/d/b/c;-><init>(Lorg/d/d/c;)V

    throw v0

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/d/d/c;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/d/c/e;->b(Lorg/d/d/c;)V

    .line 26
    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    const-string v0, "OAuth "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const-string v5, "OAuth "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 33
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_0
    const-string v4, "%s=\"%s\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/d/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
