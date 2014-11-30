.class final Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;
.super Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;->a:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    return-void
.end method
