.class public abstract Lorg/b/c/j;
.super Ljava/lang/Object;
.source "JettyJSONContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/b/a/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lorg/b/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c/j",
            "<TT;>.org/b/c/l;"
        }
    .end annotation
.end field

.field private b:Lorg/b/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c/j",
            "<TT;>.org/b/c/l;"
        }
    .end annotation
.end field

.field private c:Lorg/b/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c/j",
            "<TT;>.org/b/c/l;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/b/c/l;

    invoke-direct {v0, p0, v1}, Lorg/b/c/l;-><init>(Lorg/b/c/j;Lorg/b/c/k;)V

    iput-object v0, p0, Lorg/b/c/j;->a:Lorg/b/c/l;

    .line 32
    new-instance v0, Lorg/b/c/m;

    invoke-direct {v0, p0, v1}, Lorg/b/c/m;-><init>(Lorg/b/c/j;Lorg/b/c/k;)V

    iput-object v0, p0, Lorg/b/c/j;->b:Lorg/b/c/l;

    .line 33
    new-instance v0, Lorg/b/c/n;

    invoke-direct {v0, p0, v1}, Lorg/b/c/n;-><init>(Lorg/b/c/j;Lorg/b/c/k;)V

    iput-object v0, p0, Lorg/b/c/j;->c:Lorg/b/c/l;

    .line 37
    return-void
.end method

.method static synthetic a(Lorg/b/c/j;)Lorg/b/c/l;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/b/c/j;->a:Lorg/b/c/l;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)[Lorg/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 p1, 0x0

    .line 88
    :goto_0
    return-object p1

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    check-cast p1, [Lorg/b/a/e;

    check-cast p1, [Lorg/b/a/e;

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/b/c/j;->a(I)[Lorg/b/a/e;

    move-result-object v0

    .line 87
    const/4 v1, 0x0

    check-cast p1, Lorg/b/a/e;

    aput-object p1, v0, v1

    move-object p1, v0

    .line 88
    goto :goto_0
.end method

.method static synthetic b(Lorg/b/c/j;)Lorg/b/c/l;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/b/c/j;->b:Lorg/b/c/l;

    return-object v0
.end method


# virtual methods
.method public a([Lorg/b/a/e;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/b/c/j;->c:Lorg/b/c/l;

    invoke-virtual {v0, p1}, Lorg/b/c/l;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/c/a/d/a/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/b/c/j;->a:Lorg/b/c/l;

    return-object v0
.end method

.method protected abstract a(I)[Lorg/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)[Lorg/b/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/b/c/j;->c:Lorg/b/c/l;

    new-instance v1, Lorg/c/a/d/a/i;

    invoke-direct {v1, p1}, Lorg/c/a/d/a/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/b/c/l;->a(Lorg/c/a/d/a/h;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lorg/b/c/j;->a(Ljava/lang/Object;)[Lorg/b/a/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/text/ParseException;

    throw v0
.end method

.method protected abstract b()Lorg/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
