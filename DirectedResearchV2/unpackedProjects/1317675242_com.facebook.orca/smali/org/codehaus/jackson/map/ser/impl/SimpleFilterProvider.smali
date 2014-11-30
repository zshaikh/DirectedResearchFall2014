.class public Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
.super Lorg/codehaus/jackson/map/ser/FilterProvider;
.source "SimpleFilterProvider.java"


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/FilterProvider;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->a:Ljava/util/Map;

    .line 33
    return-void
.end method
