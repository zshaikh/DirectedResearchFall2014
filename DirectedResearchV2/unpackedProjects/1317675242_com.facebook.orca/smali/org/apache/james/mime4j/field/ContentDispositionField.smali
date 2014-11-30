.class public Lorg/apache/james/mime4j/field/ContentDispositionField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentDispositionField.java"


# static fields
.field static final a:Lorg/apache/james/mime4j/field/FieldParser;

.field private static b:Lorg/apache/commons/logging/Log;


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->b:Lorg/apache/commons/logging/Log;

    .line 320
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->c:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->d:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->e:Ljava/util/Map;

    .line 81
    return-void
.end method
