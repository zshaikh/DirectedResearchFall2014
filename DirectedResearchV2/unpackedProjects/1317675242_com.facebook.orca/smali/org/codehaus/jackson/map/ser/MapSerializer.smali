.class public Lorg/codehaus/jackson/map/ser/MapSerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
.source "MapSerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field protected static final a:Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field protected final b:Lorg/codehaus/jackson/map/BeanProperty;

.field protected final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Z

.field protected final e:Lorg/codehaus/jackson/type/JavaType;

.field protected final f:Lorg/codehaus/jackson/type/JavaType;

.field protected g:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Lorg/codehaus/jackson/map/TypeSerializer;

.field protected j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->b()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ser/MapSerializer;->a:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 88
    move-object v0, v3

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v1 .. v9}, Lorg/codehaus/jackson/map/ser/MapSerializer;-><init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 124
    iput-object p8, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->b:Lorg/codehaus/jackson/map/BeanProperty;

    .line 125
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->c:Ljava/util/HashSet;

    .line 126
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->e:Lorg/codehaus/jackson/type/JavaType;

    .line 127
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->f:Lorg/codehaus/jackson/type/JavaType;

    .line 128
    iput-boolean p4, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->d:Z

    .line 129
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->i:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 130
    iput-object p6, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 131
    iput-object p7, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 132
    invoke-static {}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/MapSerializer;->j:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 133
    return-void
.end method
