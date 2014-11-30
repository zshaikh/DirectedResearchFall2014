.class public Lorg/codehaus/jackson/map/ObjectWriter;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# static fields
.field protected static final a:Lorg/codehaus/jackson/PrettyPrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/codehaus/jackson/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/MinimalPrettyPrinter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ObjectWriter;->a:Lorg/codehaus/jackson/PrettyPrinter;

    return-void
.end method
