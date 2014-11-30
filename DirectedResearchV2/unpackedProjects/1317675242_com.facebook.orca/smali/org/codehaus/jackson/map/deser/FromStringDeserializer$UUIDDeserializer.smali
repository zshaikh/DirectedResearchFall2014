.class public Lorg/codehaus/jackson/map/deser/FromStringDeserializer$UUIDDeserializer;
.super Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;
    .locals 5

    .prologue
    .line 112
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 113
    check-cast p1, [B

    check-cast p1, [B

    .line 114
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only construct UUIDs from 16 byte arrays; got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->c(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    .line 118
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 120
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 121
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 124
    :goto_0
    return-object v0

    .line 123
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->b(Ljava/lang/Object;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 105
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$UUIDDeserializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$UUIDDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
