.class public final Lcom/fusepowered/m1/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/google/gson/internal/Streams$1;,
        Lcom/fusepowered/m1/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static parse(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/m1/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v1, 0x1

    .line 43
    .local v1, isEmpty:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    .line 44
    const/4 v1, 0x0

    .line 45
    sget-object v2, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    invoke-virtual {v2, p0}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fusepowered/m1/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, p0

    .line 52
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 51
    .local v0, e:Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 52
    sget-object v2, Lcom/fusepowered/m1/google/gson/JsonNull;->INSTANCE:Lcom/fusepowered/m1/google/gson/JsonNull;

    goto :goto_0

    .line 55
    :cond_0
    new-instance v2, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 56
    .end local v0           #e:Ljava/io/EOFException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e:Lcom/fusepowered/m1/google/gson/stream/MalformedJsonException;
    new-instance v2, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v0           #e:Lcom/fusepowered/m1/google/gson/stream/MalformedJsonException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 59
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/fusepowered/m1/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/fusepowered/m1/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 60
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static write(Lcom/fusepowered/m1/google/gson/JsonElement;Lcom/fusepowered/m1/google/gson/stream/JsonWriter;)V
    .locals 1
    .parameter "element"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2
    .parameter "appendable"

    .prologue
    .line 73
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    .end local p0
    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/m1/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/fusepowered/m1/google/gson/internal/Streams$1;)V

    goto :goto_0
.end method
