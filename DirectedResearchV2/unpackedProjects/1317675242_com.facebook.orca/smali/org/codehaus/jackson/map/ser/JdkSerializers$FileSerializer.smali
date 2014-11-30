.class public final Lorg/codehaus/jackson/map/ser/JdkSerializers$FileSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "JdkSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
