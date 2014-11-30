.class public abstract Lorg/c/a/c/d;
.super Ljava/lang/Object;
.source "AbstractConnection.java"

# interfaces
.implements Lorg/c/a/c/r;


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:J

.field protected final j:Lorg/c/a/c/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/c/a/c/d;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/c/d;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/c/s;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/c/a/c/d;->b:J

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/c/a/c/s;J)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    .line 43
    iput-wide p2, p0, Lorg/c/a/c/d;->b:J

    .line 44
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    sget-object v0, Lorg/c/a/c/d;->a:Lorg/c/a/d/c/d;

    const-string v1, "onIdleExpired {}ms {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V

    .line 79
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lorg/c/a/c/d;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 72
    :try_start_1
    iget-object v0, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 76
    sget-object v1, Lorg/c/a/c/d;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public l()Lorg/c/a/c/s;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/c/a/c/d;->j:Lorg/c/a/c/s;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const-string v0, "%s@%x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
