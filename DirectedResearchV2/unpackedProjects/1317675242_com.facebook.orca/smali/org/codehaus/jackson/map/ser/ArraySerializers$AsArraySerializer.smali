.class public abstract Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
.source "ArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/TypeSerializer;

.field protected final b:Lorg/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;-><init>(Ljava/lang/Class;)V

    .line 47
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;->a:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 48
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    .line 49
    return-void
.end method
