.class Lorg/a/a/aw;
.super Ljava/lang/Object;
.source "DERFactory.java"


# static fields
.field static final a:Lorg/a/a/bj;

.field static final b:Lorg/a/a/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lorg/a/a/bj;

    invoke-direct {v0}, Lorg/a/a/bj;-><init>()V

    sput-object v0, Lorg/a/a/aw;->a:Lorg/a/a/bj;

    .line 6
    new-instance v0, Lorg/a/a/bl;

    invoke-direct {v0}, Lorg/a/a/bl;-><init>()V

    sput-object v0, Lorg/a/a/aw;->b:Lorg/a/a/bl;

    return-void
.end method

.method static a(Lorg/a/a/e;)Lorg/a/a/bj;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lorg/a/a/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/a/a/aw;->a:Lorg/a/a/bj;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/a/a/bj;

    invoke-direct {v0, p0}, Lorg/a/a/bj;-><init>(Lorg/a/a/e;)V

    goto :goto_0
.end method

.method static a(Lorg/a/a/e;Z)Lorg/a/a/bl;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lorg/a/a/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/a/a/aw;->b:Lorg/a/a/bl;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/a/a/bl;

    invoke-direct {v0, p0, p1}, Lorg/a/a/bl;-><init>(Lorg/a/a/e;Z)V

    goto :goto_0
.end method
