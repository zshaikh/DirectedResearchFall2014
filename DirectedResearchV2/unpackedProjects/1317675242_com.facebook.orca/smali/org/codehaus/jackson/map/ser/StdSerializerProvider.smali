.class public Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
.super Lorg/codehaus/jackson/map/SerializerProvider;
.source "StdSerializerProvider.java"


# static fields
.field public static final a:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final d:Lorg/codehaus/jackson/map/SerializerFactory;

.field protected final e:Lorg/codehaus/jackson/map/ser/SerializerCache;

.field protected final f:Lorg/codehaus/jackson/map/util/RootNameLookup;

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

.field protected i:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final k:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/codehaus/jackson/map/ser/FailingSerializer;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/FailingSerializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdKeySerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdKeySerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$1;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->c:Lorg/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 122
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->c:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->g:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 128
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->h:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 134
    sget-object v0, Lorg/codehaus/jackson/map/ser/NullSerializer;->a:Lorg/codehaus/jackson/map/ser/NullSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->i:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 143
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->a:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->j:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 178
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->d:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 179
    new-instance v0, Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->e:Lorg/codehaus/jackson/map/ser/SerializerCache;

    .line 181
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->k:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 182
    new-instance v0, Lorg/codehaus/jackson/map/util/RootNameLookup;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/RootNameLookup;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->f:Lorg/codehaus/jackson/map/util/RootNameLookup;

    .line 183
    return-void
.end method
