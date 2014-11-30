.class public Lorg/codehaus/jackson/map/MappingIterator;
.super Ljava/lang/Object;
.source "MappingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/MappingIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lorg/codehaus/jackson/type/JavaType;

.field protected final c:Lorg/codehaus/jackson/map/DeserializationContext;

.field protected final d:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final e:Lorg/codehaus/jackson/JsonParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    new-instance v0, Lorg/codehaus/jackson/map/MappingIterator;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    sput-object v0, Lorg/codehaus/jackson/map/MappingIterator;->a:Lorg/codehaus/jackson/map/MappingIterator;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/codehaus/jackson/map/MappingIterator;->b:Lorg/codehaus/jackson/type/JavaType;

    .line 33
    iput-object p2, p0, Lorg/codehaus/jackson/map/MappingIterator;->e:Lorg/codehaus/jackson/JsonParser;

    .line 34
    iput-object p3, p0, Lorg/codehaus/jackson/map/MappingIterator;->c:Lorg/codehaus/jackson/map/DeserializationContext;

    .line 35
    iput-object p4, p0, Lorg/codehaus/jackson/map/MappingIterator;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 40
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonStreamContext;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->n()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/map/MappingIterator;->e:Lorg/codehaus/jackson/JsonParser;

    if-nez v0, :cond_0

    move v0, v2

    .line 116
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/MappingIterator;->e:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lorg/codehaus/jackson/map/MappingIterator;->e:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 107
    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/MappingIterator;->e:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->close()V

    move v0, v2

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/map/MappingIterator;->d:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/MappingIterator;->e:Lorg/codehaus/jackson/JsonParser;

    iget-object v2, p0, Lorg/codehaus/jackson/map/MappingIterator;->c:Lorg/codehaus/jackson/map/DeserializationContext;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/JsonDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/codehaus/jackson/map/MappingIterator;->e:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->n()V

    .line 124
    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/MappingIterator;->a()Z
    :try_end_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lorg/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/map/JsonMappingException;)V

    throw v1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/MappingIterator;->b()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lorg/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/map/JsonMappingException;)V

    throw v1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
