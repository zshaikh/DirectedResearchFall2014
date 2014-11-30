.class public Lcom/dolphin/browser/search/z;
.super Ljava/lang/Object;
.source "SuggestionAdapterBase.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation
.end field

.field b:[I

.field final synthetic c:Lcom/dolphin/browser/search/k;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 2

    .prologue
    .line 836
    iput-object p1, p0, Lcom/dolphin/browser/search/z;->c:Lcom/dolphin/browser/search/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    .line 840
    invoke-static {}, Lcom/dolphin/browser/search/y;->values()[Lcom/dolphin/browser/search/y;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/search/z;->b:[I

    .line 841
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/dolphin/browser/search/z;->c:Lcom/dolphin/browser/search/k;

    iget-boolean v0, v0, Lcom/dolphin/browser/search/k;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 860
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/search/z;->b:[I

    .line 854
    iget-object v2, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    .line 855
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 856
    iget v4, v0, Lcom/dolphin/browser/search/w;->d:I

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 857
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 859
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/x;->a:Lcom/dolphin/browser/search/x;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method protected a(II)Z
    .locals 1

    .prologue
    .line 909
    invoke-static {}, Lcom/dolphin/browser/search/k;->k()[I

    move-result-object v0

    aget v0, v0, p2

    if-lt p1, v0, :cond_0

    .line 910
    const/4 v0, 0x0

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 8

    .prologue
    const/16 v7, 0x18

    .line 917
    invoke-static {}, Lcom/dolphin/browser/search/y;->values()[Lcom/dolphin/browser/search/y;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    .line 918
    iget-object v0, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    .line 919
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 920
    sget-object v3, Lcom/dolphin/browser/search/y;->i:Lcom/dolphin/browser/search/y;

    invoke-virtual {v3}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v3

    .line 921
    new-instance v4, Lcom/dolphin/browser/search/aa;

    iget-object v5, p0, Lcom/dolphin/browser/search/z;->c:Lcom/dolphin/browser/search/k;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v3, v6}, Lcom/dolphin/browser/search/aa;-><init>(Lcom/dolphin/browser/search/k;II)V

    .line 922
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 923
    iget v5, v0, Lcom/dolphin/browser/search/w;->d:I

    .line 925
    invoke-static {v5}, Lcom/dolphin/browser/search/y;->c(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 926
    invoke-virtual {v4}, Lcom/dolphin/browser/search/aa;->j()Z

    move-result v5

    if-nez v5, :cond_0

    .line 927
    invoke-virtual {v4, v0}, Lcom/dolphin/browser/search/aa;->a(Lcom/dolphin/browser/search/w;)Z

    goto :goto_0

    .line 932
    :cond_1
    aget v6, v1, v5

    invoke-virtual {p0, v6, v5}, Lcom/dolphin/browser/search/z;->a(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 936
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    aget v0, v1, v5

    add-int/lit8 v0, v0, 0x1

    aput v0, v1, v5

    .line 938
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 942
    :cond_2
    invoke-virtual {v4}, Lcom/dolphin/browser/search/aa;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 943
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 945
    :cond_3
    iput-object v2, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    .line 946
    iput-object v1, p0, Lcom/dolphin/browser/search/z;->b:[I

    .line 947
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 952
    iget-object v0, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 953
    const-string v0, ""

    .line 964
    :goto_0
    return-object v0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 955
    const-string v0, "[]"

    goto :goto_0

    .line 956
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 958
    iget-object v0, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/dolphin/browser/search/w;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    iget-object v0, p0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 961
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 964
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
