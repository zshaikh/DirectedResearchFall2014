.class public Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
.super Lorg/codehaus/jackson/map/SerializerFactory$Config;
.source "BeanSerializerFactory.java"


# static fields
.field protected static final a:[Lorg/codehaus/jackson/map/Serializers;

.field protected static final b:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;


# instance fields
.field protected final c:[Lorg/codehaus/jackson/map/Serializers;

.field protected final d:[Lorg/codehaus/jackson/map/Serializers;

.field protected final e:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-array v0, v1, [Lorg/codehaus/jackson/map/Serializers;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/Serializers;

    .line 85
    new-array v0, v1, [Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->b:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    .line 108
    return-void
.end method

.method protected constructor <init>([Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/Serializers;[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;-><init>()V

    .line 114
    if-nez p1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/Serializers;

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->c:[Lorg/codehaus/jackson/map/Serializers;

    .line 116
    if-nez p2, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/Serializers;

    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->d:[Lorg/codehaus/jackson/map/Serializers;

    .line 118
    if-nez p3, :cond_2

    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->b:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    :goto_2
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->e:[Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 119
    return-void

    :cond_0
    move-object v0, p1

    .line 114
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 116
    goto :goto_1

    :cond_2
    move-object v0, p3

    .line 118
    goto :goto_2
.end method
