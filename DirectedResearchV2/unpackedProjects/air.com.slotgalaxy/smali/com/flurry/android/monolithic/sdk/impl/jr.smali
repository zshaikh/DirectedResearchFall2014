.class Lcom/flurry/android/monolithic/sdk/impl/jr;
.super Lcom/flurry/android/monolithic/sdk/impl/kb;
.source "SourceFile"


# instance fields
.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
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
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/jx;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/jx",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->b:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-direct {p0, v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/kj;Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/jx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->i:Ljava/util/List;

    .line 716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->j:Ljava/util/Map;

    .line 717
    const/4 v0, 0x0

    .line 718
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/jx;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 719
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->j:Ljava/util/Map;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 720
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate enum symbol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v2, v5

    goto :goto_0

    .line 721
    :cond_1
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
    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/jr;->c(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 739
    const-string v0, "type"

    const-string v1, "enum"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/jr;->d(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 741
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/jr;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 742
    const-string v0, "doc"

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/jr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_1
    const-string v0, "symbols"

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->f(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 745
    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 746
    :cond_2
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->c()V

    .line 747
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 748
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/jr;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 749
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/List;
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
    .line 722
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->i:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 727
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 730
    :goto_0
    return v0

    .line 728
    :cond_0
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/jr;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 729
    :cond_1
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/jr;

    .line 730
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/jr;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/jr;->a(Lcom/flurry/android/monolithic/sdk/impl/kb;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/jr;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/jr;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method m()I
    .locals 2

    .prologue
    .line 735
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/kb;->m()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/jr;->i:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
