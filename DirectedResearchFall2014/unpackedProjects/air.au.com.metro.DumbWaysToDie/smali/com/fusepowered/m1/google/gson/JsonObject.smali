.class public final Lcom/fusepowered/m1/google/gson/JsonObject;
.super Lcom/fusepowered/m1/google/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/m1/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lcom/fusepowered/m1/google/gson/JsonNull;->INSTANCE:Lcom/fusepowered/m1/google/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/fusepowered/m1/google/gson/JsonNull;->INSTANCE:Lcom/fusepowered/m1/google/gson/JsonNull;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;)V

    .line 102
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;)V

    .line 113
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;)V

    .line 91
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;)V

    .line 80
    return-void
.end method

.method bridge synthetic deepCopy()Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonObject;->deepCopy()Lcom/fusepowered/m1/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method deepCopy()Lcom/fusepowered/m1/google/gson/JsonObject;
    .locals 4

    .prologue
    .line 38
    new-instance v2, Lcom/fusepowered/m1/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/fusepowered/m1/google/gson/JsonObject;-><init>()V

    .line 39
    .local v2, result:Lcom/fusepowered/m1/google/gson/JsonObject;
    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v3}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/fusepowered/m1/google/gson/JsonElement;->deepCopy()Lcom/fusepowered/m1/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/fusepowered/m1/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;)V

    goto :goto_0

    .line 42
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/m1/google/gson/JsonElement;>;"
    :cond_0
    return-object v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/m1/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/fusepowered/m1/google/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/fusepowered/m1/google/gson/JsonObject;

    .end local p1
    iget-object v0, p1, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    return-object p0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/fusepowered/m1/google/gson/JsonArray;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonArray;

    return-object p0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/fusepowered/m1/google/gson/JsonObject;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonObject;

    return-object p0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/fusepowered/m1/google/gson/JsonPrimitive;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    return-object p0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "memberName"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 1
    .parameter "property"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonObject;->members:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    return-object p0
.end method
