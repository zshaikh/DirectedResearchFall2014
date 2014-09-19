.class Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;
.super Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
.source "ResolvingGrammarGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LitS2"
.end annotation


# instance fields
.field public expected:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V
    .locals 0
    .parameter "actual"
    .parameter "expected"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 468
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    .line 469
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 471
    instance-of v2, p1, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;

    if-nez v2, :cond_0

    move v2, v4

    .line 473
    :goto_0
    return v2

    .line 472
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;

    move-object v1, v0

    .line 473
    .local v1, other:Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->actual:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, v1, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->actual:Lcom/flurry/org/apache/avro/Schema;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, v1, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;->expected:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
