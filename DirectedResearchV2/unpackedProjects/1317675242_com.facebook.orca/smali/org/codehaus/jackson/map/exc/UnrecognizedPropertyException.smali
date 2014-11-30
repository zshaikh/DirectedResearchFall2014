.class public Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;
.super Lorg/codehaus/jackson/map/JsonMappingException;
.source "UnrecognizedPropertyException.java"


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonLocation;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    .line 37
    iput-object p3, p0, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;->a:Ljava/lang/Class;

    .line 38
    iput-object p4, p0, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;
    .locals 5

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 47
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 48
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 52
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), not marked as ignorable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v3, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->r()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1, p2}, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-object v3

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
