.class public Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
.super Ljava/lang/Object;
.source "BeanSerializerBuilder.java"


# static fields
.field private static final a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->a:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method
