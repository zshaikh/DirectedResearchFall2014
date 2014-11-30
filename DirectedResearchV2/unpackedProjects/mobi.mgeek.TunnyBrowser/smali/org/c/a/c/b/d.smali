.class public Lorg/c/a/c/b/d;
.super Lorg/c/a/c/o;
.source "IndirectNIOBuffer.java"

# interfaces
.implements Lorg/c/a/c/b/e;


# instance fields
.field protected final n:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v1}, Lorg/c/a/c/o;-><init>(IIZ)V

    .line 33
    iget-object v0, p0, Lorg/c/a/c/b/d;->m:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/d;->n:Ljava/nio/ByteBuffer;

    .line 34
    iget-object v0, p0, Lorg/c/a/c/b/d;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iget-object v0, p0, Lorg/c/a/c/b/d;->n:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/c/a/c/b/d;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 36
    return-void
.end method


# virtual methods
.method public w()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/c/a/c/b/d;->n:Ljava/nio/ByteBuffer;

    return-object v0
.end method
