.class public Ldolphin/webkit/a/a/ar;
.super Ldolphin/webkit/a/a/k;
.source "DEREnumerated.java"


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 69
    iput-object p1, p0, Ldolphin/webkit/a/a/ar;->a:[B

    .line 70
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 2

    .prologue
    .line 81
    const/16 v0, 0xa

    iget-object v1, p0, Ldolphin/webkit/a/a/ar;->a:[B

    invoke-virtual {p1, v0, v1}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 82
    return-void
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 2

    .prologue
    .line 87
    instance-of v0, p1, Ldolphin/webkit/a/a/ar;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 92
    :cond_0
    check-cast p1, Ldolphin/webkit/a/a/ar;

    .line 94
    iget-object v0, p0, Ldolphin/webkit/a/a/ar;->a:[B

    iget-object v1, p1, Ldolphin/webkit/a/a/ar;->a:[B

    invoke-static {v0, v1}, Ldolphin/webkit/a/c/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ldolphin/webkit/a/a/ar;->a:[B

    invoke-static {v0}, Ldolphin/webkit/a/c/a;->a([B)I

    move-result v0

    return v0
.end method
