.class Lcom/flurry/android/monolithic/sdk/impl/hv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IJ)Ljava/util/LinkedHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const-wide/16 v8, 0x0

    .line 9
    if-ge p0, v0, :cond_3

    .line 12
    :goto_0
    cmp-long v1, p1, v8

    if-gez v1, :cond_2

    move-wide v1, v8

    .line 15
    :goto_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_1

    .line 20
    if-nez v4, :cond_0

    move-wide v5, v8

    .line 24
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    move-wide v5, v1

    .line 23
    goto :goto_3

    .line 27
    :cond_1
    return-object v3

    :cond_2
    move-wide v1, p1

    goto :goto_1

    :cond_3
    move v0, p0

    goto :goto_0
.end method
