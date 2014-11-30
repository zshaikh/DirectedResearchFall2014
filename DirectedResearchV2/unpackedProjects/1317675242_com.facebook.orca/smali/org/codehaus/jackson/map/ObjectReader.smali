.class public Lorg/codehaus/jackson/map/ObjectReader;
.super Lorg/codehaus/jackson/ObjectCodec;
.source "ObjectReader.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# static fields
.field private static final a:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/SimpleType;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ObjectReader;->a:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method
