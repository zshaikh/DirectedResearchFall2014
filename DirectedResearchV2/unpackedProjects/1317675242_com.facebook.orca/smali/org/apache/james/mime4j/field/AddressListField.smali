.class public Lorg/apache/james/mime4j/field/AddressListField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "AddressListField.java"


# static fields
.field static final a:Lorg/apache/james/mime4j/field/FieldParser;

.field private static b:Lorg/apache/commons/logging/Log;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/james/mime4j/field/AddressListField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListField;->b:Lorg/apache/commons/logging/Log;

    .line 73
    new-instance v0, Lorg/apache/james/mime4j/field/AddressListField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/AddressListField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->c:Z

    .line 41
    return-void
.end method
