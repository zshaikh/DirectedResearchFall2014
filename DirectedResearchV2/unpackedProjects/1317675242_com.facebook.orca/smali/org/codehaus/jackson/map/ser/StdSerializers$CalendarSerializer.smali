.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 331
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
