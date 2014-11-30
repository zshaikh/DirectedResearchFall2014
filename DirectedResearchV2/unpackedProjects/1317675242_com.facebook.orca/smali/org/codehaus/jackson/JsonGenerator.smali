.class public abstract Lorg/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/codehaus/jackson/Versioned;


# instance fields
.field protected i:Lorg/codehaus/jackson/PrettyPrinter;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(C)V
.end method

.method public abstract b([CII)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract close()V
.end method
