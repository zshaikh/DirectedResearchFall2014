.class final Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters$12;
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
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Character;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NULL:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 328
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->nextNull()V

    .line 329
    const/4 v1, 0x0

    .line 335
    :goto_0
    return-object v1

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 333
    new-instance v1, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting character, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/m1/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters$12;->read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Character;)V
    .locals 1
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/fusepowered/m1/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/fusepowered/m1/google/gson/stream/JsonWriter;

    .line 340
    return-void

    .line 339
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    check-cast p2, Ljava/lang/Character;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters$12;->write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Character;)V

    return-void
.end method
