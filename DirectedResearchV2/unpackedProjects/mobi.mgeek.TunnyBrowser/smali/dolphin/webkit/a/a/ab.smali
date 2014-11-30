.class Ldolphin/webkit/a/a/ab;
.super Ljava/lang/Object;
.source "BERFactory.java"


# static fields
.field static final a:Ldolphin/webkit/a/a/ae;

.field static final b:Ldolphin/webkit/a/a/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Ldolphin/webkit/a/a/ae;

    invoke-direct {v0}, Ldolphin/webkit/a/a/ae;-><init>()V

    sput-object v0, Ldolphin/webkit/a/a/ab;->a:Ldolphin/webkit/a/a/ae;

    .line 6
    new-instance v0, Ldolphin/webkit/a/a/ag;

    invoke-direct {v0}, Ldolphin/webkit/a/a/ag;-><init>()V

    sput-object v0, Ldolphin/webkit/a/a/ab;->b:Ldolphin/webkit/a/a/ag;

    return-void
.end method

.method static a(Ldolphin/webkit/a/a/d;)Ldolphin/webkit/a/a/ae;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Ldolphin/webkit/a/a/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ldolphin/webkit/a/a/ab;->a:Ldolphin/webkit/a/a/ae;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldolphin/webkit/a/a/ae;

    invoke-direct {v0, p0}, Ldolphin/webkit/a/a/ae;-><init>(Ldolphin/webkit/a/a/d;)V

    goto :goto_0
.end method
