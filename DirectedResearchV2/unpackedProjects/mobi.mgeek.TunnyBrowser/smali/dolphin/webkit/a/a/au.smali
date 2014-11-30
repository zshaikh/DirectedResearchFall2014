.class Ldolphin/webkit/a/a/au;
.super Ljava/lang/Object;
.source "DERFactory.java"


# static fields
.field static final a:Ldolphin/webkit/a/a/bh;

.field static final b:Ldolphin/webkit/a/a/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Ldolphin/webkit/a/a/bh;

    invoke-direct {v0}, Ldolphin/webkit/a/a/bh;-><init>()V

    sput-object v0, Ldolphin/webkit/a/a/au;->a:Ldolphin/webkit/a/a/bh;

    .line 6
    new-instance v0, Ldolphin/webkit/a/a/bj;

    invoke-direct {v0}, Ldolphin/webkit/a/a/bj;-><init>()V

    sput-object v0, Ldolphin/webkit/a/a/au;->b:Ldolphin/webkit/a/a/bj;

    return-void
.end method

.method static a(Ldolphin/webkit/a/a/d;)Ldolphin/webkit/a/a/bh;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Ldolphin/webkit/a/a/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ldolphin/webkit/a/a/au;->a:Ldolphin/webkit/a/a/bh;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldolphin/webkit/a/a/bh;

    invoke-direct {v0, p0}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    goto :goto_0
.end method

.method static a(Ldolphin/webkit/a/a/d;Z)Ldolphin/webkit/a/a/bj;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Ldolphin/webkit/a/a/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ldolphin/webkit/a/a/au;->b:Ldolphin/webkit/a/a/bj;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldolphin/webkit/a/a/bj;

    invoke-direct {v0, p0, p1}, Ldolphin/webkit/a/a/bj;-><init>(Ldolphin/webkit/a/a/d;Z)V

    goto :goto_0
.end method
