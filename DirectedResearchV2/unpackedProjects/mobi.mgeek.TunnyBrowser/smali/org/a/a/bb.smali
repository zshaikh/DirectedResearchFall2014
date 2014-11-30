.class public Lorg/a/a/bb;
.super Lorg/a/a/k;
.source "DERNull.java"


# static fields
.field public static final a:Lorg/a/a/bb;


# instance fields
.field b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lorg/a/a/bb;

    invoke-direct {v0}, Lorg/a/a/bb;-><init>()V

    sput-object v0, Lorg/a/a/bb;->a:Lorg/a/a/bb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/a/a/k;-><init>()V

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/a/a/bb;->b:[B

    .line 17
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x5

    iget-object v1, p0, Lorg/a/a/bb;->b:[B

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(I[B)V

    .line 24
    return-void
.end method
