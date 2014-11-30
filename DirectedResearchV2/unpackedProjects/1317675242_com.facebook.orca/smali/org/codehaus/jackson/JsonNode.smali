.class public abstract Lorg/codehaus/jackson/JsonNode;
.super Ljava/lang/Object;
.source "JsonNode.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/JsonNode;->c:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/JsonNode;->d:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a()Lorg/codehaus/jackson/JsonToken;
.end method

.method public a(Z)Z
    .locals 0

    .prologue
    .line 418
    return p1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f()Lorg/codehaus/jackson/JsonParser$NumberType;
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->x()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public p()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 242
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public s()D
    .locals 2

    .prologue
    .line 243
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public t()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(Z)Z

    move-result v0

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    sget-object v0, Lorg/codehaus/jackson/JsonNode;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    sget-object v0, Lorg/codehaus/jackson/JsonNode;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
