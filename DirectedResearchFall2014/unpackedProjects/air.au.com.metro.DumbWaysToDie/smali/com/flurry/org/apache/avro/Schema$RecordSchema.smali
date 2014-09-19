.class Lcom/flurry/org/apache/avro/Schema$RecordSchema;
.super Lcom/flurry/org/apache/avro/Schema$NamedSchema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordSchema"
.end annotation


# instance fields
.field private fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final isError:Z


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "doc"
    .parameter "isError"

    .prologue
    .line 597
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-direct {p0, v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$NamedSchema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;Lcom/flurry/org/apache/avro/Schema$Name;Ljava/lang/String;)V

    .line 598
    iput-boolean p3, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->isError:Z

    .line 599
    return-void
.end method


# virtual methods
.method computeHash()I
    .locals 4

    .prologue
    .line 653
    invoke-static {}, Lcom/flurry/org/apache/avro/Schema;->access$1000()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 654
    .local v1, seen:Ljava/util/Map;
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 660
    :cond_0
    :goto_0
    return v2

    .line 655
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 657
    .local v0, first:Z
    :try_start_0
    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->computeHash()I

    move-result v2

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    .line 660
    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_2
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 635
    if-ne p1, p0, :cond_1

    move v5, v8

    .line 649
    .end local p1
    :cond_0
    :goto_0
    return v5

    .line 636
    .restart local p1
    :cond_1
    instance-of v5, p1, Lcom/flurry/org/apache/avro/Schema$RecordSchema;

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_0

    .line 637
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;

    move-object v4, v0

    .line 638
    .local v4, that:Lcom/flurry/org/apache/avro/Schema$RecordSchema;
    invoke-virtual {p0, v4}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->equalCachedHash(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v7

    goto :goto_0

    .line 639
    :cond_3
    invoke-virtual {p0, v4}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->equalNames(Lcom/flurry/org/apache/avro/Schema$NamedSchema;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v7

    goto :goto_0

    .line 640
    :cond_4
    iget-object v5, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v6, v4, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v5, v6}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v7

    goto :goto_0

    .line 641
    :cond_5
    invoke-static {}, Lcom/flurry/org/apache/avro/Schema;->access$800()Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 642
    .local v3, seen:Ljava/util/Set;
    new-instance v2, Lcom/flurry/org/apache/avro/Schema$SeenPair;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/flurry/org/apache/avro/Schema$SeenPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema$1;)V

    .line 643
    .local v2, here:Lcom/flurry/org/apache/avro/Schema$SeenPair;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v8

    goto :goto_0

    .line 644
    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 646
    .local v1, first:Z
    :try_start_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v5, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    check-cast p1, Lcom/flurry/org/apache/avro/Schema$RecordSchema;

    .end local p1
    iget-object v6, p1, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 649
    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    :cond_7
    throw v5
.end method

.method fieldsToJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 6
    .parameter "names"
    .parameter "gen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 682
    iget-object v4, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 683
    .local v1, f:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 684
    const-string v4, "name"

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v4, "type"

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 687
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->doc()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 688
    const-string v4, "doc"

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->doc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 690
    const-string v4, "default"

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeTree(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 693
    :cond_1
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/apache/avro/Schema$Field$Order;->ASCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    if-eq v4, v5, :cond_2

    .line 694
    const-string v4, "order"

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v5

    #getter for: Lcom/flurry/org/apache/avro/Schema$Field$Order;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/flurry/org/apache/avro/Schema$Field$Order;->access$1200(Lcom/flurry/org/apache/avro/Schema$Field$Order;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_2
    #getter for: Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1300(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_4

    #getter for: Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1300(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 696
    const-string v4, "aliases"

    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 698
    #getter for: Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1300(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 699
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 700
    .end local v0           #alias:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 702
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    #getter for: Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->access$1400(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema$Props;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 703
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 705
    .end local v1           #f:Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_5
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 706
    return-void
.end method

.method public getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;
    .locals 2
    .parameter "fieldname"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fieldMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Schema fields not set yet"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/flurry/org/apache/avro/Schema$Field;

    return-object p0
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Schema fields not set yet"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->isError:Z

    return v0
.end method

.method public setFields(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/Schema$Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    iget-object v5, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 619
    new-instance v5, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v6, "Fields are already set"

    invoke-direct {v5, v6}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 621
    :cond_0
    const/4 v2, 0x0

    .line 622
    .local v2, i:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fieldMap:Ljava/util/Map;

    .line 623
    new-instance v1, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;

    invoke-direct {v1}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;-><init>()V

    .line 624
    .local v1, ff:Lcom/flurry/org/apache/avro/Schema$LockableArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 625
    .local v0, f:Lcom/flurry/org/apache/avro/Schema$Field;
    #getter for: Lcom/flurry/org/apache/avro/Schema$Field;->position:I
    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->access$700(Lcom/flurry/org/apache/avro/Schema$Field;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 626
    new-instance v5, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field already used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 627
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    #setter for: Lcom/flurry/org/apache/avro/Schema$Field;->position:I
    invoke-static {v0, v2}, Lcom/flurry/org/apache/avro/Schema$Field;->access$702(Lcom/flurry/org/apache/avro/Schema$Field;I)I

    .line 628
    iget-object v5, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fieldMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-virtual {v1, v0}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 630
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 631
    .end local v0           #f:Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$LockableArrayList;->lock()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fields:Ljava/util/List;

    .line 632
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->hashCode:I

    .line 633
    return-void
.end method

.method toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .parameter "names"
    .parameter "gen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->writeNameRef(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 665
    :cond_0
    #getter for: Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;
    invoke-static {p1}, Lcom/flurry/org/apache/avro/Schema$Names;->access$1100(Lcom/flurry/org/apache/avro/Schema$Names;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, savedSpace:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 667
    const-string v1, "type"

    iget-boolean v2, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->isError:Z

    if-eqz v2, :cond_2

    const-string v2, "error"

    :goto_1
    invoke-virtual {p2, v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->writeName(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 669
    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    #getter for: Lcom/flurry/org/apache/avro/Schema$Name;->space:Ljava/lang/String;
    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema$Name;->access$600(Lcom/flurry/org/apache/avro/Schema$Name;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->access$1102(Lcom/flurry/org/apache/avro/Schema$Names;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->getDoc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    const-string v1, "doc"

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->getDoc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    const-string v1, "fields"

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->fieldsToJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 674
    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v1, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 675
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/Schema$RecordSchema;->aliasesToJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 676
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 677
    #setter for: Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/flurry/org/apache/avro/Schema$Names;->access$1102(Lcom/flurry/org/apache/avro/Schema$Names;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 667
    :cond_2
    const-string v2, "record"

    goto :goto_1
.end method
