.class public Lorg/apache/james/mime4j/storage/DefaultStorageProvider;
.super Ljava/lang/Object;
.source "DefaultStorageProvider.java"


# static fields
.field private static a:Lorg/apache/commons/logging/Log;

.field private static volatile b:Lorg/apache/james/mime4j/storage/StorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->a:Lorg/apache/commons/logging/Log;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->b:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 49
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->b()V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a()Lorg/apache/james/mime4j/storage/StorageProvider;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->b:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method

.method private static b()V
    .locals 5

    .prologue
    .line 79
    const-string v0, "org.apache.james.mime4j.defaultStorageProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/storage/StorageProvider;

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->b:Lorg/apache/james/mime4j/storage/StorageProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->b:Lorg/apache/james/mime4j/storage/StorageProvider;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;

    invoke-direct {v0}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>()V

    .line 91
    new-instance v1, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;I)V

    sput-object v1, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->b:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 93
    :cond_1
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    sget-object v2, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create or instantiate StorageProvider class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'. Using default instead."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
