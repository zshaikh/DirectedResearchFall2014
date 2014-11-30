.class public Lcom/jayway/jsonpath/filter/JsonPathFilterChain;
.super Ljava/lang/Object;
.source "JsonPathFilterChain.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jayway/jsonpath/filter/JsonPathFilterBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/filter/JsonPathFilterChain;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/filter/JsonPathFilterChain;->a:Ljava/util/List;

    .line 20
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/jayway/jsonpath/filter/JsonPathFilterBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 27
    invoke-static {p0}, Lcom/jayway/jsonpath/filter/JsonPathFilterFactory;->a(Ljava/lang/String;)Lcom/jayway/jsonpath/filter/JsonPathFilterBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/jayway/jsonpath/filter/FilterOutput;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/jayway/jsonpath/filter/FilterOutput;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/filter/FilterOutput;-><init>(Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/jayway/jsonpath/filter/JsonPathFilterChain;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jayway/jsonpath/filter/JsonPathFilterBase;

    .line 37
    if-nez p0, :cond_0

    .line 38
    new-instance v0, Lcom/jayway/jsonpath/InvalidPathException;

    invoke-direct {v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>()V

    throw v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/jayway/jsonpath/filter/FilterOutput;->b()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 41
    const/4 v0, 0x0

    .line 46
    :cond_1
    return-object v0

    .line 43
    :cond_2
    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/filter/JsonPathFilterBase;->a(Lcom/jayway/jsonpath/filter/FilterOutput;)Lcom/jayway/jsonpath/filter/FilterOutput;

    move-result-object v0

    goto :goto_0
.end method
