.class public Lorg/apache/james/mime4j/message/BodyFactory;
.super Ljava/lang/Object;
.source "BodyFactory.java"


# static fields
.field private static a:Lorg/apache/commons/logging/Log;

.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private c:Lorg/apache/james/mime4j/storage/StorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->a:Lorg/apache/commons/logging/Log;

    .line 41
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->d:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->a()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->c:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 51
    return-void
.end method
