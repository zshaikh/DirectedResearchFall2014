.class public Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
.super Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"


# static fields
.field public static final h:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;


# instance fields
.field protected final i:Lorg/codehaus/jackson/map/SerializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->h:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;-><init>()V

    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>()V

    .line 193
    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->i:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .line 194
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
