.class Lorg/a/a/ad;
.super Ljava/lang/Object;
.source "BERFactory.java"


# static fields
.field static final a:Lorg/a/a/ag;

.field static final b:Lorg/a/a/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lorg/a/a/ag;

    invoke-direct {v0}, Lorg/a/a/ag;-><init>()V

    sput-object v0, Lorg/a/a/ad;->a:Lorg/a/a/ag;

    .line 6
    new-instance v0, Lorg/a/a/ai;

    invoke-direct {v0}, Lorg/a/a/ai;-><init>()V

    sput-object v0, Lorg/a/a/ad;->b:Lorg/a/a/ai;

    return-void
.end method

.method static a(Lorg/a/a/e;)Lorg/a/a/ag;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lorg/a/a/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/a/a/ad;->a:Lorg/a/a/ag;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/a/a/ag;

    invoke-direct {v0, p0}, Lorg/a/a/ag;-><init>(Lorg/a/a/e;)V

    goto :goto_0
.end method
