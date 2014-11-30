.class public Lorg/a/a/aq;
.super Lorg/a/a/l;
.source "DERBoolean.java"


# static fields
.field public static final b:Lorg/a/a/aq;

.field public static final c:Lorg/a/a/aq;


# instance fields
.field a:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lorg/a/a/aq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/a/a/aq;-><init>(Z)V

    sput-object v0, Lorg/a/a/aq;->b:Lorg/a/a/aq;

    .line 11
    new-instance v0, Lorg/a/a/aq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/a/a/aq;-><init>(Z)V

    sput-object v0, Lorg/a/a/aq;->c:Lorg/a/a/aq;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 77
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput-byte v0, p0, Lorg/a/a/aq;->a:B

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 66
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/a/a/aq;->a:B

    .line 72
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    new-array v0, v3, [B

    .line 91
    const/4 v1, 0x0

    iget-byte v2, p0, Lorg/a/a/aq;->a:B

    aput-byte v2, v0, v1

    .line 93
    invoke-virtual {p1, v3, v0}, Lorg/a/a/bh;->a(I[B)V

    .line 94
    return-void
.end method

.method protected a(Lorg/a/a/bd;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/a/a/aq;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lorg/a/a/aq;->a:B

    check-cast p1, Lorg/a/a/aq;

    iget-byte v2, p1, Lorg/a/a/aq;->a:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 109
    iget-byte v0, p0, Lorg/a/a/aq;->a:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-byte v0, p0, Lorg/a/a/aq;->a:B

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
