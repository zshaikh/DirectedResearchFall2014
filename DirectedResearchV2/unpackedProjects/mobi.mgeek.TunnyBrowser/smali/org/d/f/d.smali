.class public Lorg/d/f/d;
.super Ljava/lang/Object;
.source "TimestampServiceImpl.java"

# interfaces
.implements Lorg/d/f/c;


# instance fields
.field private a:Lorg/d/f/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/d/f/e;

    invoke-direct {v0}, Lorg/d/f/e;-><init>()V

    iput-object v0, p0, Lorg/d/f/d;->a:Lorg/d/f/e;

    .line 20
    return-void
.end method

.method private c()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lorg/d/f/d;->a:Lorg/d/f/e;

    invoke-virtual {v0}, Lorg/d/f/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/d/f/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/d/f/d;->c()Ljava/lang/Long;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/d/f/d;->a:Lorg/d/f/e;

    invoke-virtual {v2}, Lorg/d/f/e;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
