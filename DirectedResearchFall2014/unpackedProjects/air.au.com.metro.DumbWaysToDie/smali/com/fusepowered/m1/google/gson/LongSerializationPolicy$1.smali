.class final enum Lcom/fusepowered/m1/google/gson/LongSerializationPolicy$1;
.super Lcom/fusepowered/m1/google/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/m1/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/fusepowered/m1/google/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    new-instance v0, Lcom/fusepowered/m1/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/fusepowered/m1/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method