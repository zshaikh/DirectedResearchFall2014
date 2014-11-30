.class public abstract Lorg/codehaus/jackson/map/ser/SerializerBase;
.super Lorg/codehaus/jackson/map/JsonSerializer;
.source "SerializerBase.java"

# interfaces
.implements Lorg/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<TT;>;",
        "Lorg/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# instance fields
.field protected final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
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
    .line 27
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->k:Ljava/lang/Class;

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->k:Ljava/lang/Class;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->k:Ljava/lang/Class;

    return-object v0
.end method
