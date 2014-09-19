.class public final Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;
.super Lcom/fusepowered/m1/google/gson/stream/JsonReader;
.source "JsonTreeReader.java"


# static fields
.field private static final SENTINEL_CLOSED:Ljava/lang/Object;

.field private static final UNREADABLE_READER:Ljava/io/Reader;


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader$1;

    invoke-direct {v0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader$1;-><init>()V

    sput-object v0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/m1/google/gson/JsonElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 54
    sget-object v0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method private expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V
    .locals 3
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    return-void
.end method

.method private peekStack()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private popStack()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 60
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/google/gson/JsonArray;

    .line 61
    .local v0, array:Lcom/fusepowered/m1/google/gson/JsonArray;
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fusepowered/m1/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public beginObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 72
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/google/gson/JsonObject;

    .line 73
    .local v0, object:Lcom/fusepowered/m1/google/gson/JsonObject;
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fusepowered/m1/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    sget-object v1, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_ARRAY:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 66
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 67
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_OBJECT:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 78
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 79
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v0

    .line 84
    .local v0, token:Lcom/fusepowered/m1/google/gson/stream/JsonToken;
    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_OBJECT:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_ARRAY:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->BOOLEAN:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 162
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v2

    .line 172
    .local v2, token:Lcom/fusepowered/m1/google/gson/stream/JsonToken;
    sget-object v3, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->STRING:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 173
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-virtual {v3}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v0

    .line 176
    .local v0, result:D
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->isLenient()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 180
    return-wide v0
.end method

.method public nextInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v1

    .line 195
    .local v1, token:Lcom/fusepowered/m1/google/gson/stream/JsonToken;
    sget-object v2, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->STRING:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 196
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-virtual {v2}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    .line 199
    .local v0, result:I
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 200
    return v0
.end method

.method public nextLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v2

    .line 185
    .local v2, token:Lcom/fusepowered/m1/google/gson/stream/JsonToken;
    sget-object v3, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->STRING:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 186
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-virtual {v3}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    .line 189
    .local v0, result:J
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 190
    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    sget-object v2, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NAME:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 146
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 147
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public nextNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NULL:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 167
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v0

    .line 154
    .local v0, token:Lcom/fusepowered/m1/google/gson/stream/JsonToken;
    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->STRING:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->STRING:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v5, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    .line 122
    :goto_0
    return-object v5

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v3

    .line 93
    .local v3, o:Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/Iterator;

    if-eqz v5, :cond_4

    .line 94
    iget-object v5, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    iget-object v6, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v1, v5, Lcom/fusepowered/m1/google/gson/JsonObject;

    .line 95
    .local v1, isObject:Z
    move-object v0, v3

    check-cast v0, Ljava/util/Iterator;

    move-object v2, v0

    .line 96
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    if-eqz v1, :cond_1

    .line 98
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NAME:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 100
    :cond_1
    iget-object v5, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v5

    goto :goto_0

    .line 104
    :cond_2
    if-eqz v1, :cond_3

    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_OBJECT:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_ARRAY:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 106
    .end local v1           #isObject:Z
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_4
    instance-of v5, v3, Lcom/fusepowered/m1/google/gson/JsonObject;

    if-eqz v5, :cond_5

    .line 107
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 108
    :cond_5
    instance-of v5, v3, Lcom/fusepowered/m1/google/gson/JsonArray;

    if-eqz v5, :cond_6

    .line 109
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 110
    :cond_6
    instance-of v5, v3, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    if-eqz v5, :cond_a

    .line 111
    move-object v0, v3

    check-cast v0, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    move-object v4, v0

    .line 112
    .local v4, primitive:Lcom/fusepowered/m1/google/gson/JsonPrimitive;
    invoke-virtual {v4}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->isString()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 113
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->STRING:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {v4}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 115
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->BOOLEAN:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 116
    :cond_8
    invoke-virtual {v4}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 117
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NUMBER:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 119
    :cond_9
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 121
    .end local v4           #primitive:Lcom/fusepowered/m1/google/gson/JsonPrimitive;
    :cond_a
    instance-of v5, v3, Lcom/fusepowered/m1/google/gson/JsonNull;

    if-eqz v5, :cond_b

    .line 122
    sget-object v5, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NULL:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    goto :goto_0

    .line 123
    :cond_b
    sget-object v5, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    if-ne v3, v5, :cond_c

    .line 124
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "JsonReader is closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_c
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public promoteNameToValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    sget-object v2, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NAME:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/fusepowered/m1/google/gson/stream/JsonToken;)V

    .line 222
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 223
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    new-instance v3, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-direct {v3, p0}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public skipValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NAME:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->nextName()Ljava/lang/String;

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
