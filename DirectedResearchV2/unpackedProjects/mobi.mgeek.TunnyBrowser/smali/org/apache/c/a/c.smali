.class public Lorg/apache/c/a/c;
.super Ljava/lang/Object;
.source "FieldValueMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte p1, p0, Lorg/apache/c/a/c;->b:B

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/c/a/c;->a:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/c/a/c;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-byte p1, p0, Lorg/apache/c/a/c;->b:B

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/c/a/c;->a:Z

    .line 43
    iput-object p2, p0, Lorg/apache/c/a/c;->c:Ljava/lang/String;

    .line 44
    return-void
.end method
