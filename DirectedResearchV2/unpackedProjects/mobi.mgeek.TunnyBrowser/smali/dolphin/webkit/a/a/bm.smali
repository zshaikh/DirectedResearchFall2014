.class public Ldolphin/webkit/a/a/bm;
.super Ldolphin/webkit/a/a/v;
.source "DERTaggedObject.java"


# static fields
.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ldolphin/webkit/a/a/bm;->e:[B

    return-void
.end method

.method public constructor <init>(ILdolphin/webkit/a/a/ap;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/a/a/v;-><init>(ILdolphin/webkit/a/a/ap;)V

    .line 24
    return-void
.end method

.method public constructor <init>(ZILdolphin/webkit/a/a/ap;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/a/a/v;-><init>(ZILdolphin/webkit/a/a/ap;)V

    .line 37
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 3

    .prologue
    const/16 v0, 0xa0

    .line 53
    iget-boolean v1, p0, Ldolphin/webkit/a/a/bm;->b:Z

    if-nez v1, :cond_2

    .line 55
    iget-object v1, p0, Ldolphin/webkit/a/a/bm;->d:Ldolphin/webkit/a/a/ap;

    invoke-interface {v1}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/bb;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    iget-boolean v2, p0, Ldolphin/webkit/a/a/bm;->c:Z

    if-eqz v2, :cond_0

    .line 59
    iget v2, p0, Ldolphin/webkit/a/a/bm;->a:I

    invoke-virtual {p1, v0, v2, v1}, Ldolphin/webkit/a/a/bf;->a(II[B)V

    .line 84
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 76
    :goto_1
    iget v2, p0, Ldolphin/webkit/a/a/bm;->a:I

    invoke-virtual {p1, v0, v2}, Ldolphin/webkit/a/a/bf;->a(II)V

    .line 77
    const/4 v0, 0x1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v0, v2}, Ldolphin/webkit/a/a/bf;->write([BII)V

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x80

    goto :goto_1

    .line 82
    :cond_2
    iget v1, p0, Ldolphin/webkit/a/a/bm;->a:I

    sget-object v2, Ldolphin/webkit/a/a/bm;->e:[B

    invoke-virtual {p1, v0, v1, v2}, Ldolphin/webkit/a/a/bf;->a(II[B)V

    goto :goto_0
.end method
