.class Lcom/flurry/android/monolithic/sdk/impl/kk;
.super Lcom/flurry/android/monolithic/sdk/impl/ji;
.source "SourceFile"


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/jx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/jx",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->e:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;-><init>(Lcom/flurry/android/monolithic/sdk/impl/kj;)V

    .line 811
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->g:Ljava/util/Map;

    .line 815
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/jx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->f:Ljava/util/List;

    .line 816
    const/4 v0, 0x0

    .line 817
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/jx;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 818
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/kj;->e:Lcom/flurry/android/monolithic/sdk/impl/kj;

    if-ne v3, v4, :cond_0

    .line 819
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nested union: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->g()Ljava/lang/String;

    move-result-object v0

    .line 821
    if-nez v0, :cond_1

    .line 822
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nameless in union:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_1
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->g:Ljava/util/Map;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 824
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate in union:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v2, v4

    .line 825
    goto :goto_0

    .line 826
    :cond_3
    return-void
.end method


# virtual methods
.method a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->b()V

    .line 851
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->c()V

    .line 854
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 846
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set properties on a union: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 830
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 833
    :goto_0
    return v0

    .line 831
    :cond_0
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/kk;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 832
    :cond_1
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/kk;

    .line 833
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/kk;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/kk;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/kk;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->f:Ljava/util/List;

    return-object v0
.end method

.method m()I
    .locals 3

    .prologue
    .line 838
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->m()I

    move-result v0

    .line 839
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kk;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 840
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->m()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 841
    :cond_0
    return v0
.end method
