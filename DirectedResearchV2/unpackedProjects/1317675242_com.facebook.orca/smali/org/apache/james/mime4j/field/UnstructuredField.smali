.class public Lorg/apache/james/mime4j/field/UnstructuredField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "UnstructuredField.java"


# static fields
.field static final a:Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/apache/james/mime4j/field/UnstructuredField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/UnstructuredField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/UnstructuredField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->b:Z

    .line 35
    return-void
.end method
