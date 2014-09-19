.class Lcom/flurry/org/apache/avro/Schema$Names;
.super Ljava/util/LinkedHashMap;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Names"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/flurry/org/apache/avro/Schema$Name;",
        "Lcom/flurry/org/apache/avro/Schema;",
        ">;"
    }
.end annotation


# instance fields
.field private space:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1045
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "space"

    .prologue
    .line 1046
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1100(Lcom/flurry/org/apache/avro/Schema$Names;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/flurry/org/apache/avro/Schema$Names;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public add(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 2
    .parameter "schema"

    .prologue
    .line 1067
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    move-object v1, v0

    iget-object v1, v1, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {p0, v1, p1}, Lcom/flurry/org/apache/avro/Schema$Names;->put(Lcom/flurry/org/apache/avro/Schema$Name;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    .line 1068
    return-void
.end method

.method public contains(Lcom/flurry/org/apache/avro/Schema;)Z
    .locals 1
    .parameter "schema"

    .prologue
    .line 1064
    check-cast p1, Lcom/flurry/org/apache/avro/Schema$NamedSchema;

    .end local p1
    iget-object v0, p1, Lcom/flurry/org/apache/avro/Schema$NamedSchema;->name:Lcom/flurry/org/apache/avro/Schema$Name;

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Schema$Names;->get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 5
    .parameter "o"

    .prologue
    .line 1054
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1055
    sget-object v4, Lcom/flurry/org/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema$Type;

    .line 1056
    .local v2, primitive:Lcom/flurry/org/apache/avro/Schema$Type;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    .line 1061
    .end local v2           #primitive:Lcom/flurry/org/apache/avro/Schema$Type;
    .end local p0
    .end local p1
    :goto_0
    return-object v3

    .line 1057
    .restart local v2       #primitive:Lcom/flurry/org/apache/avro/Schema$Type;
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v1, Lcom/flurry/org/apache/avro/Schema$Name;

    check-cast p1, Ljava/lang/String;

    .end local p1
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Lcom/flurry/org/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    .end local v2           #primitive:Lcom/flurry/org/apache/avro/Schema$Type;
    .local v1, name:Lcom/flurry/org/apache/avro/Schema$Name;
    :goto_1
    invoke-super {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/flurry/org/apache/avro/Schema;

    move-object v3, p0

    goto :goto_0

    .line 1059
    .end local v1           #name:Lcom/flurry/org/apache/avro/Schema$Name;
    .restart local p0
    .restart local p1
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Name;

    move-object v1, v0

    .restart local v1       #name:Lcom/flurry/org/apache/avro/Schema$Name;
    goto :goto_1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1042
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/Schema$Names;->get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/flurry/org/apache/avro/Schema$Name;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;
    .locals 3
    .parameter "name"
    .parameter "schema"

    .prologue
    .line 1071
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/Schema$Names;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t redefine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/flurry/org/apache/avro/Schema;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1042
    check-cast p1, Lcom/flurry/org/apache/avro/Schema$Name;

    .end local p1
    check-cast p2, Lcom/flurry/org/apache/avro/Schema;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$Names;->put(Lcom/flurry/org/apache/avro/Schema$Name;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public space()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-object v0
.end method

.method public space(Ljava/lang/String;)V
    .locals 0
    .parameter "space"

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-void
.end method
