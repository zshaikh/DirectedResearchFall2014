.class final Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;
.super Ljava/lang/Object;
.source "TempFileStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
