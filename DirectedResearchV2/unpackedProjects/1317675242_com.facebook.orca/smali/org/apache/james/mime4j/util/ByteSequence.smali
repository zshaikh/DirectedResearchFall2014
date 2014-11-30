.class public interface abstract Lorg/apache/james/mime4j/util/ByteSequence;
.super Ljava/lang/Object;
.source "ByteSequence.java"


# static fields
.field public static final a:Lorg/apache/james/mime4j/util/ByteSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/james/mime4j/util/EmptyByteSequence;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/EmptyByteSequence;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->a:Lorg/apache/james/mime4j/util/ByteSequence;

    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract b()I
.end method
