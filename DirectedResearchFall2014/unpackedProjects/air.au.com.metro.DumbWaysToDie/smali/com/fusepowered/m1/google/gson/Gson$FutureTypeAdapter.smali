.class Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;
.super Lcom/fusepowered/m1/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fusepowered/m1/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 872
    .local p0, this:Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;,"Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
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
    .line 883
    .local p0, this:Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;,"Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/fusepowered/m1/google/gson/TypeAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, this:Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;,"Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, typeAdapter:Lcom/fusepowered/m1/google/gson/TypeAdapter;,"Lcom/fusepowered/m1/google/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 879
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    .line 880
    return-void
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
    .line 890
    .local p0, this:Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;,"Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 891
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 894
    return-void
.end method
