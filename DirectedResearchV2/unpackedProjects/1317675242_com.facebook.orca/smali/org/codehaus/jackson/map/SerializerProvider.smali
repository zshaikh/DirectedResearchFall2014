.class public abstract Lorg/codehaus/jackson/map/SerializerProvider;
.super Ljava/lang/Object;
.source "SerializerProvider.java"


# static fields
.field protected static final l:Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field protected final m:Lorg/codehaus/jackson/map/SerializationConfig;

.field protected final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->a()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/SerializerProvider;->l:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializerProvider;->m:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 40
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializerProvider;->n:Ljava/lang/Class;

    .line 41
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializerProvider;->m:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->d()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
