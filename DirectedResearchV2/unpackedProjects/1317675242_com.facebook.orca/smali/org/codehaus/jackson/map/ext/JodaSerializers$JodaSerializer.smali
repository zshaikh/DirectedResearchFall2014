.class public abstract Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "JodaSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:Lorg/joda/time/format/DateTimeFormatter;

.field static final b:Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;->a:Lorg/joda/time/format/DateTimeFormatter;

    .line 51
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;->b:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
