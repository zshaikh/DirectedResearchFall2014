.class public final Lcom/flurry/android/monolithic/sdk/impl/xp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ado;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/xp;Lcom/flurry/android/monolithic/sdk/impl/xp;)Lcom/flurry/android/monolithic/sdk/impl/xp;
    .locals 4

    .prologue
    .line 35
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 51
    :goto_0
    return-object v0

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p0

    .line 39
    goto :goto_0

    .line 41
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 45
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 49
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    :cond_5
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xp;-><init>(Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(Ljava/lang/annotation/Annotation;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xp;->c(Ljava/lang/annotation/Annotation;)V

    .line 68
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xp;->c(Ljava/lang/annotation/Annotation;)V

    .line 75
    return-void
.end method

.method protected final c(Ljava/lang/annotation/Annotation;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "[null]"

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xp;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
