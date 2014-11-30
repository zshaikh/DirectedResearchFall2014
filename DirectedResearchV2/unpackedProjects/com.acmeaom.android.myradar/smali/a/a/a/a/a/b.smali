.class public La/a/a/a/a/b;
.super Ljava/lang/IllegalArgumentException;
.source "ProGuard"


# instance fields
.field private final a:La/a/a/a/a/a/b;


# direct methods
.method public varargs constructor <init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 45
    new-instance v0, La/a/a/a/a/a/b;

    invoke-direct {v0, p0}, La/a/a/a/a/a/b;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, La/a/a/a/a/b;->a:La/a/a/a/a/a/b;

    .line 46
    iget-object v0, p0, La/a/a/a/a/b;->a:La/a/a/a/a/a/b;

    invoke-virtual {v0, p1, p2}, La/a/a/a/a/a/b;->a(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, La/a/a/a/a/b;->a:La/a/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, La/a/a/a/a/b;->a:La/a/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
