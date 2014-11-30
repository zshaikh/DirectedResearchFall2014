.class public final Lorg/codehaus/jackson/map/ext/JodaSerializers$LocalDateSerializer;
.super Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;
.source "JodaSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer",
        "<",
        "Lorg/joda/time/LocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const-class v0, Lorg/joda/time/LocalDate;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method
