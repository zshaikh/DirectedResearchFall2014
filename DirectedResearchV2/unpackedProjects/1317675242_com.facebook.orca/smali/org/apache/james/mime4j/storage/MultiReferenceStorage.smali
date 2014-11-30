.class public Lorg/apache/james/mime4j/storage/MultiReferenceStorage;
.super Ljava/lang/Object;
.source "MultiReferenceStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private final a:Lorg/apache/james/mime4j/storage/Storage;


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->a:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
