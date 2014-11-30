.class public Lorg/apache/james/mime4j/field/DateTimeField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "DateTimeField.java"


# static fields
.field static final a:Lorg/apache/james/mime4j/field/FieldParser;

.field private static b:Lorg/apache/commons/logging/Log;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->b:Lorg/apache/commons/logging/Log;

    .line 83
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DateTimeField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->c:Z

    .line 45
    return-void
.end method
