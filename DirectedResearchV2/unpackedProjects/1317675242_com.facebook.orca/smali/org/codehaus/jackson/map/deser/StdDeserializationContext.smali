.class public Lorg/codehaus/jackson/map/deser/StdDeserializationContext;
.super Lorg/codehaus/jackson/map/DeserializationContext;
.source "StdDeserializationContext.java"


# instance fields
.field protected a:Lorg/codehaus/jackson/JsonParser;

.field protected final b:Lorg/codehaus/jackson/map/DeserializerProvider;

.field protected c:Lorg/codehaus/jackson/map/util/ArrayBuilders;

.field protected d:Lorg/codehaus/jackson/map/util/ObjectBuffer;

.field protected e:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/DeserializationContext;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V

    .line 64
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    .line 65
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 154
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b:Lorg/codehaus/jackson/map/DeserializerProvider;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct Map key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-static {v0, p1, p2}, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' into a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->b()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 116
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .line 118
    :cond_1
    return-void
.end method

.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->f:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->d()Lorg/codehaus/jackson/map/util/LinkedNode;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    .line 177
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    .line 178
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    move-object v2, v0

    .line 180
    :goto_0
    if-eqz v2, :cond_1

    .line 182
    :try_start_0
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/util/LinkedNode;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/DeserializationProblemHandler;

    invoke-virtual {v0, p0, p2, p3, p4}, Lorg/codehaus/jackson/map/DeserializationProblemHandler;->a(Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 188
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    .line 191
    :goto_1
    return v0

    .line 185
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/util/LinkedNode;->a()Lorg/codehaus/jackson/map/util/LinkedNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 188
    :cond_1
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    throw v0
.end method

.method protected b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]...["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public b()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from number value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/map/util/ObjectBuffer;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .line 100
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/codehaus/jackson/map/util/ObjectBuffer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;-><init>()V

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->d:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    goto :goto_0
.end method

.method public final d()Lorg/codehaus/jackson/map/util/ArrayBuilders;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->c:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    return-object v0
.end method

.method protected e()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->f:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->n()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Ljava/text/DateFormat;

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->e:Ljava/text/DateFormat;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v0, "[N/A]"

    goto :goto_0
.end method
