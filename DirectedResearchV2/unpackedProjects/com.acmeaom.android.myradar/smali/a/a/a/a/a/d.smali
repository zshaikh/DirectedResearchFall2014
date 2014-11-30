.class public La/a/a/a/a/d;
.super Ljava/lang/IllegalStateException;
.source "ProGuard"


# instance fields
.field private final a:La/a/a/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, La/a/a/a/a/a/d;->eK:La/a/a/a/a/a/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, La/a/a/a/a/d;-><init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public varargs constructor <init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 46
    new-instance v0, La/a/a/a/a/a/b;

    invoke-direct {v0, p0}, La/a/a/a/a/a/b;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, La/a/a/a/a/d;->a:La/a/a/a/a/a/b;

    .line 47
    iget-object v0, p0, La/a/a/a/a/d;->a:La/a/a/a/a/a/b;

    invoke-virtual {v0, p1, p2}, La/a/a/a/a/a/b;->a(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a()La/a/a/a/a/a/b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, La/a/a/a/a/d;->a:La/a/a/a/a/a/b;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, La/a/a/a/a/d;->a:La/a/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, La/a/a/a/a/d;->a:La/a/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
