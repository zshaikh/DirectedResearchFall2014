.class Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
.super Ljava/lang/Object;
.source "ValidatingGrammarGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LitS"
.end annotation


# instance fields
.field public final actual:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 0
    .parameter "actual"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 128
    instance-of v0, p1, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    if-nez v0, :cond_0

    move v0, v2

    .line 129
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lcom/flurry/org/apache/avro/Schema;

    check-cast p1, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    .end local p1
    iget-object v1, p1, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lcom/flurry/org/apache/avro/Schema;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->hashCode()I

    move-result v0

    return v0
.end method
