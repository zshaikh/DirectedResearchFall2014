.class public interface abstract Lcom/fusepowered/m1/google/gson/JsonDeserializer;
.super Ljava/lang/Object;
.source "JsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcom/fusepowered/m1/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/fusepowered/m1/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/fusepowered/m1/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/m1/google/gson/JsonParseException;
        }
    .end annotation
.end method
