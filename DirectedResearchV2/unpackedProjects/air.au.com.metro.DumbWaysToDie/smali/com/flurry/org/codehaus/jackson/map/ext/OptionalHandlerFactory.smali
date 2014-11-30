.class public Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "OptionalHandlerFactory.java"


# static fields
.field private static final CLASS_NAME_DOM_DOCUMENT:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final CLASS_NAME_DOM_NODE:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final DESERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLDeserializers"

.field private static final DESERIALIZERS_FOR_JODA_DATETIME:Ljava/lang/String; = "com.flurry.org.codehaus.jackson.map.ext.JodaDeserializers"

.field private static final DESERIALIZER_FOR_DOM_DOCUMENT:Ljava/lang/String; = "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

.field private static final DESERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

.field private static final PACKAGE_PREFIX_JAVAX_XML:Ljava/lang/String; = "javax.xml."

.field private static final PACKAGE_PREFIX_JODA_DATETIME:Ljava/lang/String; = "org.joda.time."

.field private static final SERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLSerializers"

.field private static final SERIALIZERS_FOR_JODA_DATETIME:Ljava/lang/String; = "com.flurry.org.codehaus.jackson.map.ext.JodaSerializers"

.field private static final SERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.flurry.org.codehaus.jackson.map.ext.DOMSerializer"

.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .param p2, "classNameToImplement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 154
    move-object v0, p1

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 163
    :goto_1
    return v1

    .line 159
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 160
    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .param p2, "interfaceToImplement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 169
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 170
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 180
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return v5

    .line 169
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 176
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 177
    goto :goto_1

    .line 175
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 203
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 204
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 214
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return v5

    .line 203
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 210
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 211
    goto :goto_1

    .line 209
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 197
    :goto_1
    return v2

    .line 186
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 192
    :cond_1
    move-object v0, p1

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v0, :cond_3

    .line 193
    invoke-direct {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 194
    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 197
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public findDeserializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 13
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "p"    # Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v12, "org.w3c.dom.Node"

    const-string v11, "javax.xml."

    .line 95
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 96
    .local v8, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "className":Ljava/lang/String;
    const-string v9, "org.joda.time."

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 100
    const-string v4, "com.flurry.org.codehaus.jackson.map.ext.JodaDeserializers"

    .line 111
    .local v4, "factoryName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v4}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 112
    .local v6, "ob":Ljava/lang/Object;
    if-nez v6, :cond_5

    move-object v9, v10

    .line 132
    .end local v4    # "factoryName":Ljava/lang/String;
    .end local v6    # "ob":Ljava/lang/Object;
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :goto_1
    return-object v9

    .line 101
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :cond_0
    const-string v9, "javax.xml."

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "javax.xml."

    invoke-direct {p0, v8, v11}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    :cond_1
    const-string v4, "com.flurry.org.codehaus.jackson.map.ext.CoreXMLDeserializers"

    .restart local v4    # "factoryName":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v4    # "factoryName":Ljava/lang/String;
    :cond_2
    const-string v9, "org.w3c.dom.Node"

    invoke-direct {p0, v8, v12}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 105
    const-string v9, "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

    invoke-direct {p0, v9}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    check-cast p0, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-object v9, p0

    goto :goto_1

    .line 106
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :cond_3
    const-string v9, "org.w3c.dom.Node"

    invoke-direct {p0, v8, v12}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    const-string v9, "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

    invoke-direct {p0, v9}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    check-cast p0, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-object v9, p0

    goto :goto_1

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :cond_4
    move-object v9, v10

    .line 109
    goto :goto_1

    .line 116
    .restart local v4    # "factoryName":Ljava/lang/String;
    .restart local v6    # "ob":Ljava/lang/Object;
    :cond_5
    move-object v0, v6

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/util/Provider;

    move-object v7, v0

    .line 117
    .local v7, "prov":Lcom/flurry/org/codehaus/jackson/map/util/Provider;, "Lcom/flurry/org/codehaus/jackson/map/util/Provider<Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;>;"
    invoke-interface {v7}, Lcom/flurry/org/codehaus/jackson/map/util/Provider;->provide()Ljava/util/Collection;

    move-result-object v3

    .line 120
    .local v3, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;

    .line 121
    .local v2, "deser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_6

    move-object v9, v2

    .line 122
    goto :goto_1

    .line 126
    .end local v2    # "deser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    :cond_7
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;

    .line 127
    .restart local v2    # "deser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v2

    .line 128
    goto :goto_1

    .end local v2    # "deser":Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer<*>;"
    :cond_9
    move-object v9, v10

    .line 132
    goto :goto_1
.end method

.method public findSerializer(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 12
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v11, "javax.xml."

    .line 54
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 55
    .local v8, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "className":Ljava/lang/String;
    const-string v9, "org.joda.time."

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 59
    const-string v4, "com.flurry.org.codehaus.jackson.map.ext.JodaSerializers"

    .line 69
    .local v4, "factoryName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v4}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 70
    .local v6, "ob":Ljava/lang/Object;
    if-nez v6, :cond_4

    move-object v9, v10

    .line 90
    .end local v4    # "factoryName":Ljava/lang/String;
    .end local v6    # "ob":Ljava/lang/Object;
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :goto_1
    return-object v9

    .line 60
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :cond_0
    const-string v9, "javax.xml."

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "javax.xml."

    invoke-direct {p0, v8, v11}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    :cond_1
    const-string v4, "com.flurry.org.codehaus.jackson.map.ext.CoreXMLSerializers"

    .restart local v4    # "factoryName":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v4    # "factoryName":Ljava/lang/String;
    :cond_2
    const-string v9, "org.w3c.dom.Node"

    invoke-direct {p0, v8, v9}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 64
    const-string v9, "com.flurry.org.codehaus.jackson.map.ext.DOMSerializer"

    invoke-direct {p0, v9}, Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    check-cast p0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object v9, p0

    goto :goto_1

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :cond_3
    move-object v9, v10

    .line 66
    goto :goto_1

    .line 74
    .restart local v4    # "factoryName":Ljava/lang/String;
    .restart local v6    # "ob":Ljava/lang/Object;
    :cond_4
    move-object v0, v6

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/util/Provider;

    move-object v7, v0

    .line 75
    .local v7, "prov":Lcom/flurry/org/codehaus/jackson/map/util/Provider;, "Lcom/flurry/org/codehaus/jackson/map/util/Provider<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;>;"
    invoke-interface {v7}, Lcom/flurry/org/codehaus/jackson/map/util/Provider;->provide()Ljava/util/Collection;

    move-result-object v2

    .line 78
    .local v2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 79
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_5

    .line 80
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    check-cast p0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object v9, p0

    goto :goto_1

    .line 84
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 85
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object v9, p0

    goto :goto_1

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<*>;>;"
    :cond_8
    move-object v9, v10

    .line 90
    goto :goto_1
.end method
