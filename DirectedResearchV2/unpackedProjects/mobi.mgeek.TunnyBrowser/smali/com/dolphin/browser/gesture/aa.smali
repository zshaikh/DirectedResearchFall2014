.class Lcom/dolphin/browser/gesture/aa;
.super Lcom/dolphin/browser/gesture/ac;
.source "InstanceLearner.java"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/dolphin/browser/gesture/ab;

    invoke-direct {v0}, Lcom/dolphin/browser/gesture/ab;-><init>()V

    sput-object v0, Lcom/dolphin/browser/gesture/aa;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ac;-><init>()V

    return-void
.end method


# virtual methods
.method a(II[F)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/aa;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 49
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 50
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v7, :cond_5

    .line 51
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/z;

    .line 52
    iget-object v1, v0, Lcom/dolphin/browser/gesture/z;->a:[F

    array-length v1, v1

    array-length v2, p3

    if-eq v1, v2, :cond_1

    .line 50
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 57
    iget-object v1, v0, Lcom/dolphin/browser/gesture/z;->a:[F

    invoke-static {v1, p3, p2}, Lcom/dolphin/browser/gesture/w;->a([F[FI)F

    move-result v1

    float-to-double v1, v1

    .line 63
    :goto_2
    const-wide/16 v9, 0x0

    cmpl-double v3, v1, v9

    if-nez v3, :cond_4

    .line 64
    const-wide v1, 0x7fefffffffffffffL

    move-wide v2, v1

    .line 68
    :goto_3
    iget-object v1, v0, Lcom/dolphin/browser/gesture/z;->b:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 69
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v1, v2, v9

    if-lez v1, :cond_0

    .line 70
    :cond_2
    iget-object v0, v0, Lcom/dolphin/browser/gesture/z;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_3
    iget-object v1, v0, Lcom/dolphin/browser/gesture/z;->a:[F

    invoke-static {v1, p3}, Lcom/dolphin/browser/gesture/w;->a([F[F)F

    move-result v1

    float-to-double v1, v1

    goto :goto_2

    .line 66
    :cond_4
    const-wide/high16 v9, 0x3ff0000000000000L

    div-double v1, v9, v1

    move-wide v2, v1

    goto :goto_3

    .line 75
    :cond_5
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 77
    new-instance v3, Lcom/dolphin/browser/gesture/ae;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v1, v6, v7}, Lcom/dolphin/browser/gesture/ae;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 85
    :cond_6
    sget-object v0, Lcom/dolphin/browser/gesture/aa;->a:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    return-object v5
.end method
