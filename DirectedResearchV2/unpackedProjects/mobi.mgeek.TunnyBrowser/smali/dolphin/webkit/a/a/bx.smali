.class abstract Ldolphin/webkit/a/a/bx;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field protected final a:Ljava/io/InputStream;

.field private b:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    iput-object p1, p0, Ldolphin/webkit/a/a/bx;->a:Ljava/io/InputStream;

    .line 16
    iput p2, p0, Ldolphin/webkit/a/a/bx;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Ldolphin/webkit/a/a/bx;->b:I

    return v0
.end method

.method protected b(Z)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Ldolphin/webkit/a/a/bx;->a:Ljava/io/InputStream;

    instance-of v0, v0, Ldolphin/webkit/a/a/bu;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Ldolphin/webkit/a/a/bx;->a:Ljava/io/InputStream;

    check-cast v0, Ldolphin/webkit/a/a/bu;

    invoke-virtual {v0, p1}, Ldolphin/webkit/a/a/bu;->a(Z)V

    .line 31
    :cond_0
    return-void
.end method
