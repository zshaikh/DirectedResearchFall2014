.class Lcom/fusepowered/m1/google/gson/TypeAdapter$1;
.super Lcom/fusepowered/m1/google/gson/TypeAdapter;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/google/gson/TypeAdapter;->nullSafe()Lcom/fusepowered/m1/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m1/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/google/gson/TypeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    .local p0, this:Lcom/fusepowered/m1/google/gson/TypeAdapter$1;,"Lcom/fusepowered/m1/google/gson/TypeAdapter.1;"
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/TypeAdapter$1;->this$0:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/fusepowered/m1/google/gson/TypeAdapter$1;,"Lcom/fusepowered/m1/google/gson/TypeAdapter.1;"
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->peek()Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m1/google/gson/stream/JsonToken;->NULL:Lcom/fusepowered/m1/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->nextNull()V

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/TypeAdapter$1;->this$0:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/fusepowered/m1/google/gson/TypeAdapter$1;,"Lcom/fusepowered/m1/google/gson/TypeAdapter.1;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    if-nez p2, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/m1/google/gson/stream/JsonWriter;

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/TypeAdapter$1;->this$0:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
