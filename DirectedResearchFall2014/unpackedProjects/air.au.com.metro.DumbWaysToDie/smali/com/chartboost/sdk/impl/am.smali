.class public Lcom/chartboost/sdk/impl/am;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/chartboost/sdk/impl/aj;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 316
    instance-of v1, p1, Lcom/chartboost/sdk/impl/aj;

    if-nez v1, :cond_0

    move v1, v7

    .line 351
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 319
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/chartboost/sdk/impl/aj;

    .line 320
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/chartboost/sdk/impl/aj;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v7

    .line 321
    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 325
    invoke-interface {p1, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 327
    if-nez v2, :cond_3

    .line 328
    if-eqz v3, :cond_3

    move v1, v7

    .line 329
    goto :goto_0

    .line 331
    :cond_3
    if-nez v3, :cond_4

    .line 332
    if-eqz v2, :cond_2

    move v1, v7

    .line 333
    goto :goto_0

    .line 335
    :cond_4
    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_5

    instance-of v1, v3, Ljava/lang/Number;

    if-eqz v1, :cond_5

    .line 336
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v5, v1

    if-eqz v1, :cond_2

    move v1, v7

    .line 338
    goto :goto_0

    .line 340
    :cond_5
    instance-of v1, v2, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_7

    instance-of v1, v3, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_7

    .line 341
    check-cast v2, Ljava/util/regex/Pattern;

    .line 342
    check-cast v3, Ljava/util/regex/Pattern;

    .line 343
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->flags()I

    move-result v1

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->flags()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_6
    move v1, v7

    .line 344
    goto :goto_0

    .line 347
    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v7

    .line 348
    goto/16 :goto_0

    .line 351
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    .line 286
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-static {p0}, Lcom/chartboost/sdk/impl/ac;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
