.class Lcom/flurry/org/apache/avro/Schema$MapSchema;
.super Lcom/flurry/org/apache/avro/Schema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapSchema"
.end annotation


# instance fields
.field private final valueType:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .parameter "valueType"

    .prologue
    .line 784
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/Schema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;)V

    .line 785
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Schema$MapSchema;->valueType:Lcom/flurry/org/apache/avro/Schema;

    .line 786
    return-void
.end method


# virtual methods
.method computeHash()I
    .locals 2

    .prologue
    .line 797
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$MapSchema;->valueType:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 789
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 792
    :goto_0
    return v2

    .line 790
    :cond_0
    instance-of v2, p1, Lcom/flurry/org/apache/avro/Schema$MapSchema;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 791
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$MapSchema;

    move-object v1, v0

    .line 792
    .local v1, that:Lcom/flurry/org/apache/avro/Schema$MapSchema;
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/Schema$MapSchema;->equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$MapSchema;->valueType:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, v1, Lcom/flurry/org/apache/avro/Schema$MapSchema;->valueType:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$MapSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v3, v1, Lcom/flurry/org/apache/avro/Schema$MapSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public getValueType()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$MapSchema;->valueType:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter "names"
    .parameter "gen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 801
    const-string v0, "type"

    const-string v1, "map"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v0, "values"

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$MapSchema;->valueType:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 804
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$MapSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 805
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 806
    return-void
.end method