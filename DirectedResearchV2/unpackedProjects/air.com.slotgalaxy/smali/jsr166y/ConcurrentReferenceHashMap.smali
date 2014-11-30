.class public Ljsr166y/ConcurrentReferenceHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljsr166y/ConcurrentReferenceHashMap$b;,
        Ljsr166y/ConcurrentReferenceHashMap$m;,
        Ljsr166y/ConcurrentReferenceHashMap$g;,
        Ljsr166y/ConcurrentReferenceHashMap$a;,
        Ljsr166y/ConcurrentReferenceHashMap$p;,
        Ljsr166y/ConcurrentReferenceHashMap$i;,
        Ljsr166y/ConcurrentReferenceHashMap$l;,
        Ljsr166y/ConcurrentReferenceHashMap$e;,
        Ljsr166y/ConcurrentReferenceHashMap$d;,
        Ljsr166y/ConcurrentReferenceHashMap$h;,
        Ljsr166y/ConcurrentReferenceHashMap$c;,
        Ljsr166y/ConcurrentReferenceHashMap$k;,
        Ljsr166y/ConcurrentReferenceHashMap$o;,
        Ljsr166y/ConcurrentReferenceHashMap$j;,
        Ljsr166y/ConcurrentReferenceHashMap$n;,
        Ljsr166y/ConcurrentReferenceHashMap$f;,
        Ljsr166y/ConcurrentReferenceHashMap$Option;,
        Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

.field static final b:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;


# instance fields
.field final c:I

.field final d:I

.field final e:[Ljsr166y/ConcurrentReferenceHashMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljsr166y/ConcurrentReferenceHashMap$h",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Z

.field transient g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->WEAK:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap;->a:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .line 160
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->STRONG:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    sput-object v0, Ljsr166y/ConcurrentReferenceHashMap;->b:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 1006
    const/high16 v0, 0x3f400000

    invoke-direct {p0, v1, v0, v1}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFI)V

    .line 1007
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 997
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFI)V

    .line 998
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 936
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFI)V

    .line 937
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 7
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 916
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    sget-object v4, Ljsr166y/ConcurrentReferenceHashMap;->a:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    sget-object v5, Ljsr166y/ConcurrentReferenceHashMap;->b:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFILjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/util/EnumSet;)V

    .line 918
    return-void
.end method

.method public constructor <init>(IFILjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/util/EnumSet;)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I
    .param p4, "keyType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .param p5, "valueType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFI",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljava/util/EnumSet",
            "<",
            "Ljsr166y/ConcurrentReferenceHashMap$Option;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p6, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljsr166y/ConcurrentReferenceHashMap$Option;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 864
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 865
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 866
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 868
    :cond_1
    const/high16 v0, 0x10000

    if-le p3, v0, :cond_2

    .line 869
    const/high16 p3, 0x10000

    :cond_2
    move v0, v3

    move v1, v4

    .line 874
    :goto_0
    if-ge v0, p3, :cond_3

    .line 875
    add-int/lit8 v1, v1, 0x1

    .line 876
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    :cond_3
    const/16 v2, 0x20

    sub-int v1, v2, v1

    iput v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->d:I

    .line 879
    sub-int v1, v0, v3

    iput v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->c:I

    .line 880
    invoke-static {v0}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(I)[Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    iput-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    .line 882
    const/high16 v1, 0x40000000

    if-le p1, v1, :cond_4

    .line 883
    const/high16 p1, 0x40000000

    .line 884
    :cond_4
    div-int v1, p1, v0

    .line 885
    mul-int/2addr v0, v1

    if-ge v0, p1, :cond_8

    .line 886
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v3

    .line 888
    :goto_2
    if-ge v1, v0, :cond_5

    .line 889
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 891
    :cond_5
    if-eqz p6, :cond_6

    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$Option;->IDENTITY_COMPARISONS:Ljsr166y/ConcurrentReferenceHashMap$Option;

    invoke-virtual {p6, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->f:Z

    move v6, v4

    .line 893
    :goto_4
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    array-length v0, v0

    if-ge v6, v0, :cond_7

    .line 894
    iget-object v7, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$h;

    iget-boolean v5, p0, Ljsr166y/ConcurrentReferenceHashMap;->f:Z

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Ljsr166y/ConcurrentReferenceHashMap$h;-><init>(IFLjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Z)V

    aput-object v0, v7, v6

    .line 893
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    :cond_6
    move v0, v4

    .line 891
    goto :goto_3

    .line 896
    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(ILjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;)V
    .locals 7
    .param p1, "initialCapacity"    # I
    .param p2, "keyType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .param p3, "valueType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .prologue
    .line 953
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    const/high16 v2, 0x3f400000

    const/16 v3, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFILjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/util/EnumSet;)V

    .line 955
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/16 v2, 0x10

    const/high16 v1, 0x3f400000

    .line 1018
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFI)V

    .line 1021
    invoke-virtual {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->putAll(Ljava/util/Map;)V

    .line 1022
    return-void
.end method

.method public constructor <init>(Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;)V
    .locals 7
    .param p1, "keyType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .param p2, "valueType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    const/16 v1, 0x10

    .line 967
    const/high16 v2, 0x3f400000

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFILjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/util/EnumSet;)V

    .line 969
    return-void
.end method

.method public constructor <init>(Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/util/EnumSet;)V
    .locals 7
    .param p1, "keyType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .param p2, "valueType"    # Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljava/util/EnumSet",
            "<",
            "Ljsr166y/ConcurrentReferenceHashMap$Option;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p3, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljsr166y/ConcurrentReferenceHashMap$Option;>;"
    const/16 v1, 0x10

    .line 981
    const/high16 v2, 0x3f400000

    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(IFILjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/util/EnumSet;)V

    .line 983
    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljsr166y/ConcurrentReferenceHashMap;->b(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private static b(I)I
    .locals 3

    .prologue
    .line 239
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 240
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 241
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 242
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 243
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 244
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method final a(I)Ljsr166y/ConcurrentReferenceHashMap$h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljsr166y/ConcurrentReferenceHashMap$h",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    iget v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->d:I

    ushr-int v1, p1, v1

    iget v2, p0, Ljsr166y/ConcurrentReferenceHashMap;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1322
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1323
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljsr166y/ConcurrentReferenceHashMap$h;->c()V

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1217
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1136
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1137
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1152
    if-nez p1, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1157
    :cond_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    .line 1158
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v6

    .line 1161
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    move v3, v6

    move v4, v6

    .line 1164
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 1165
    aget-object v5, v0, v3

    iget v5, v5, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    .line 1166
    aget-object v5, v0, v3

    iget v5, v5, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    aput v5, v1, v3

    add-int/2addr v4, v5

    .line 1167
    aget-object v5, v0, v3

    invoke-virtual {v5, p1}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v7

    .line 1198
    :goto_2
    return v0

    .line 1164
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1171
    :cond_2
    if-eqz v4, :cond_b

    move v3, v6

    .line 1172
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_b

    .line 1173
    aget-object v4, v0, v3

    iget v4, v4, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    .line 1174
    aget v4, v1, v3

    aget-object v5, v0, v3

    iget v5, v5, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    if-eq v4, v5, :cond_3

    move v3, v6

    .line 1180
    :goto_4
    if-eqz v3, :cond_4

    move v0, v6

    .line 1181
    goto :goto_2

    .line 1172
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1161
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v1, v6

    .line 1184
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 1185
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move v1, v6

    .line 1188
    :goto_6
    :try_start_0
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 1189
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    move v1, v7

    :goto_7
    move v2, v6

    .line 1195
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_9

    .line 1196
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1188
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1195
    :catchall_0
    move-exception v1

    move v2, v6

    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 1196
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_8
    throw v1

    :cond_9
    move v0, v1

    .line 1198
    goto :goto_2

    :cond_a
    move v1, v6

    goto :goto_7

    :cond_b
    move v3, v7

    goto :goto_4
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1423
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$l;

    invoke-direct {v0, p0}, Ljsr166y/ConcurrentReferenceHashMap$l;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1402
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->h:Ljava/util/Set;

    .line 1403
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$b;

    invoke-direct {v0, p0}, Ljsr166y/ConcurrentReferenceHashMap$b;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->h:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1123
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1030
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    .line 1040
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v5

    move v3, v5

    .line 1042
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 1043
    aget-object v4, v0, v2

    iget v4, v4, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    if-eqz v4, :cond_0

    move v0, v5

    .line 1058
    :goto_1
    return v0

    .line 1046
    :cond_0
    aget-object v4, v0, v2

    iget v4, v4, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    aput v4, v1, v2

    add-int/2addr v3, v4

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    if-eqz v3, :cond_4

    move v2, v5

    .line 1052
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 1053
    aget-object v3, v0, v2

    iget v3, v3, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    if-nez v3, :cond_2

    aget v3, v1, v2

    aget-object v4, v0, v2

    iget v4, v4, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    if-eq v3, v4, :cond_3

    :cond_2
    move v0, v5

    .line 1055
    goto :goto_1

    .line 1052
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1058
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->g:Ljava/util/Set;

    .line 1361
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$g;

    invoke-direct {v0, p0}, Ljsr166y/ConcurrentReferenceHashMap$g;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->g:Ljava/util/Set;

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1413
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$e;

    invoke-direct {v0, p0}, Ljsr166y/ConcurrentReferenceHashMap$e;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    return-object v0
.end method

.method public purgeStaleEntries()V
    .locals 2

    .prologue
    .line 1338
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1339
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljsr166y/ConcurrentReferenceHashMap$h;->b()V

    .line 1338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1340
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1236
    :cond_0
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1237
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
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

    .line 1263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljsr166y/ConcurrentReferenceHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1264
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1248
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1250
    :cond_0
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1251
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1276
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1277
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 1286
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1287
    if-nez p2, :cond_0

    move v0, v2

    .line 1289
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, v2}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1312
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1314
    :cond_0
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1315
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1298
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1299
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1300
    :cond_1
    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1301
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap;->a(I)Ljsr166y/ConcurrentReferenceHashMap$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 1069
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->e:[Ljsr166y/ConcurrentReferenceHashMap$h;

    .line 1072
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v11

    move-wide v3, v12

    move-wide v5, v12

    .line 1075
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_a

    move v3, v11

    move v4, v11

    move-wide v5, v12

    .line 1079
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 1080
    aget-object v7, v0, v3

    iget v7, v7, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 1081
    aget-object v7, v0, v3

    iget v7, v7, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    aput v7, v1, v3

    add-int/2addr v4, v7

    .line 1079
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1083
    :cond_0
    if-eqz v4, :cond_9

    move v3, v11

    move-wide v7, v12

    .line 1084
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_8

    .line 1085
    aget-object v4, v0, v3

    iget v4, v4, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 1086
    aget v4, v1, v3

    aget-object v9, v0, v3

    iget v9, v9, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    if-eq v4, v9, :cond_1

    .line 1087
    const-wide/16 v3, -0x1

    .line 1092
    :goto_3
    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    move-wide v1, v3

    move-wide v3, v5

    .line 1095
    :goto_4
    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    move v1, v11

    .line 1097
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1098
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1084
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1075
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v1, v11

    move-wide v2, v12

    .line 1099
    :goto_6
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 1100
    aget-object v4, v0, v1

    iget v4, v4, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1099
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4
    move v1, v11

    .line 1101
    :goto_7
    array-length v4, v0

    if-ge v1, v4, :cond_5

    .line 1102
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_5
    move-wide v0, v2

    .line 1104
    :goto_8
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 1105
    const v0, 0x7fffffff

    .line 1107
    :goto_9
    return v0

    :cond_6
    long-to-int v0, v0

    goto :goto_9

    :cond_7
    move-wide v0, v3

    goto :goto_8

    :cond_8
    move-wide v3, v7

    goto :goto_3

    :cond_9
    move-wide v3, v12

    goto :goto_3

    :cond_a
    move-wide v1, v3

    move-wide v3, v5

    goto :goto_4
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->i:Ljava/util/Collection;

    .line 1382
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$m;

    invoke-direct {v0, p0}, Ljsr166y/ConcurrentReferenceHashMap$m;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap;->i:Ljava/util/Collection;

    goto :goto_0
.end method
