.class public Lorg/codehaus/jackson/map/module/SimpleSerializers;
.super Ljava/lang/Object;
.source "SimpleSerializers.java"

# interfaces
.implements Lorg/codehaus/jackson/map/Serializers;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->a:Ljava/util/HashMap;

    .line 38
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->b:Ljava/util/HashMap;

    .line 46
    return-void
.end method
