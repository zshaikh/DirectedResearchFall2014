.class final Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters$2;
.super Lcom/fusepowered/m1/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m1/google/gson/TypeAdapter",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fusepowered/m1/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 10
    .param p1, "in"    # Lcom/fusepowered/m1/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NULL:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-ne v6, v7, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->nextNull()V

    .line 88
    const/4 v6, 0x0

    .line 123
    :goto_0
    return-object v6

    .line 91
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 92
    .local v0, "bitset":Ljava/util/BitSet;
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->beginArray()V

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v5

    .line 95
    .local v5, "tokenType":Lcom/fusepowered/m1/google/gson/stream/JsonToken;
    :goto_1
    sget-object v6, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->END_ARRAY:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-eq v5, v6, :cond_4

    .line 97
    sget-object v6, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$millennialmedia$google$gson$stream$JsonToken:[I

    invoke-virtual {v5}, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 114
    new-instance v6, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid bitset value type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 99
    :pswitch_0
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->nextInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v3, v9

    .line 116
    .local v3, "set":Z
    :goto_2
    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 119
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v5

    .line 121
    goto :goto_1

    .end local v3    # "set":Z
    :cond_2
    move v3, v8

    .line 99
    goto :goto_2

    .line 102
    :pswitch_1
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    .line 103
    .restart local v3    # "set":Z
    goto :goto_2

    .line 105
    .end local v3    # "set":Z
    :pswitch_2
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    move v3, v9

    .restart local v3    # "set":Z
    :goto_3
    goto :goto_2

    .end local v3    # "set":Z
    :cond_3
    move v3, v8

    goto :goto_3

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "stringValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->endArray()V

    move-object v6, v0

    .line 123
    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m1/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    check-cast p2, Ljava/util/BitSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 4
    .param p1, "out"    # Lcom/fusepowered/m1/google/gson/stream/JsonWriter;
    .param p2, "src"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/m1/google/gson/stream/JsonWriter;

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonWriter;->beginArray()Lcom/fusepowered/m1/google/gson/stream/JsonWriter;

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 134
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 135
    .local v1, "value":I
    :goto_2
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/fusepowered/m1/google/gson/stream/JsonWriter;->value(J)Lcom/fusepowered/m1/google/gson/stream/JsonWriter;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v1    # "value":I
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonWriter;->endArray()Lcom/fusepowered/m1/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
