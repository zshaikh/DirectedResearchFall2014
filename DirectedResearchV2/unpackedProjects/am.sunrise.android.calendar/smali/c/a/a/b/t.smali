.class public final Lc/a/a/b/t;
.super Lc/a/a/b/a;
.source "ISOChronology.java"


# static fields
.field private static final a:Lc/a/a/b/t;

.field private static final b:[Lc/a/a/b/t;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc/a/a/i;",
            "Lc/a/a/b/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/a/a/b/t;->c:Ljava/util/Map;

    .line 65
    const/16 v0, 0x40

    new-array v0, v0, [Lc/a/a/b/t;

    sput-object v0, Lc/a/a/b/t;->b:[Lc/a/a/b/t;

    .line 66
    new-instance v0, Lc/a/a/b/t;

    invoke-static {}, Lc/a/a/b/s;->Z()Lc/a/a/b/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/t;-><init>(Lc/a/a/a;)V

    sput-object v0, Lc/a/a/b/t;->a:Lc/a/a/b/t;

    .line 67
    sget-object v0, Lc/a/a/b/t;->c:Ljava/util/Map;

    sget-object v1, Lc/a/a/i;->a:Lc/a/a/i;

    sget-object v2, Lc/a/a/b/t;->a:Lc/a/a/b/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private constructor <init>(Lc/a/a/a;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/a/a/b/a;-><init>(Lc/a/a/a;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public static N()Lc/a/a/b/t;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lc/a/a/b/t;->a:Lc/a/a/b/t;

    return-object v0
.end method

.method public static O()Lc/a/a/b/t;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lc/a/a/i;->a()Lc/a/a/i;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/t;->b(Lc/a/a/i;)Lc/a/a/b/t;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lc/a/a/i;)Lc/a/a/b/t;
    .locals 4

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    invoke-static {}, Lc/a/a/i;->a()Lc/a/a/i;

    move-result-object p0

    .line 99
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v1, v0, 0x3f

    .line 100
    sget-object v0, Lc/a/a/b/t;->b:[Lc/a/a/b/t;

    aget-object v0, v0, v1

    .line 101
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/a/a/b/t;->a()Lc/a/a/i;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 112
    :goto_0
    return-object v0

    .line 104
    :cond_1
    sget-object v2, Lc/a/a/b/t;->c:Ljava/util/Map;

    monitor-enter v2

    .line 105
    :try_start_0
    sget-object v0, Lc/a/a/b/t;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/t;

    .line 106
    if-nez v0, :cond_2

    .line 107
    new-instance v0, Lc/a/a/b/t;

    sget-object v3, Lc/a/a/b/t;->a:Lc/a/a/b/t;

    invoke-static {v3, p0}, Lc/a/a/b/v;->a(Lc/a/a/a;Lc/a/a/i;)Lc/a/a/b/v;

    move-result-object v3

    invoke-direct {v0, v3}, Lc/a/a/b/t;-><init>(Lc/a/a/a;)V

    .line 108
    sget-object v3, Lc/a/a/b/t;->c:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    sget-object v2, Lc/a/a/b/t;->b:[Lc/a/a/b/t;

    aput-object v0, v2, v1

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lc/a/a/i;)Lc/a/a/a;
    .locals 1

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-static {}, Lc/a/a/i;->a()Lc/a/a/i;

    move-result-object p1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lc/a/a/b/t;->a()Lc/a/a/i;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 149
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lc/a/a/b/t;->b(Lc/a/a/i;)Lc/a/a/b/t;

    move-result-object p0

    goto :goto_0
.end method

.method protected a(Lc/a/a/b/b;)V
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lc/a/a/b/t;->L()Lc/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a;->a()Lc/a/a/i;

    move-result-object v0

    sget-object v1, Lc/a/a/i;->a:Lc/a/a/i;

    if-ne v0, v1, :cond_0

    .line 171
    new-instance v0, Lc/a/a/c/f;

    sget-object v1, Lc/a/a/b/u;->a:Lc/a/a/c;

    invoke-static {}, Lc/a/a/d;->v()Lc/a/a/d;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/c/f;-><init>(Lc/a/a/c;Lc/a/a/d;I)V

    iput-object v0, p1, Lc/a/a/b/b;->H:Lc/a/a/c;

    .line 173
    iget-object v0, p1, Lc/a/a/b/b;->H:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->d()Lc/a/a/l;

    move-result-object v0

    iput-object v0, p1, Lc/a/a/b/b;->k:Lc/a/a/l;

    .line 175
    new-instance v1, Lc/a/a/c/o;

    iget-object v0, p1, Lc/a/a/b/b;->H:Lc/a/a/c;

    check-cast v0, Lc/a/a/c/f;

    invoke-static {}, Lc/a/a/d;->u()Lc/a/a/d;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lc/a/a/c/o;-><init>(Lc/a/a/c/f;Lc/a/a/d;)V

    iput-object v1, p1, Lc/a/a/b/b;->G:Lc/a/a/c;

    .line 177
    new-instance v1, Lc/a/a/c/o;

    iget-object v0, p1, Lc/a/a/b/b;->H:Lc/a/a/c;

    check-cast v0, Lc/a/a/c/f;

    iget-object v2, p1, Lc/a/a/b/b;->h:Lc/a/a/l;

    invoke-static {}, Lc/a/a/d;->q()Lc/a/a/d;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lc/a/a/c/o;-><init>(Lc/a/a/c/f;Lc/a/a/l;Lc/a/a/d;)V

    iput-object v1, p1, Lc/a/a/b/b;->C:Lc/a/a/c;

    .line 180
    :cond_0
    return-void
.end method

.method public b()Lc/a/a/a;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lc/a/a/b/t;->a:Lc/a/a/b/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 191
    if-ne p0, p1, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 194
    :cond_0
    instance-of v0, p1, Lc/a/a/b/t;

    if-eqz v0, :cond_1

    .line 195
    check-cast p1, Lc/a/a/b/t;

    .line 196
    invoke-virtual {p0}, Lc/a/a/b/t;->a()Lc/a/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/b/t;->a()Lc/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 208
    const-string v0, "ISO"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lc/a/a/b/t;->a()Lc/a/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    const-string v0, "ISOChronology"

    .line 161
    invoke-virtual {p0}, Lc/a/a/b/t;->a()Lc/a/a/i;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lc/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    return-object v0
.end method
