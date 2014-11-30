.class public abstract Lc/a/a/a/e;
.super Lc/a/a/a/c;
.source "BasePeriod.java"

# interfaces
.implements Lc/a/a/z;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lc/a/a/z;


# instance fields
.field private final b:Lc/a/a/u;

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lc/a/a/a/f;

    invoke-direct {v0}, Lc/a/a/a/f;-><init>()V

    sput-object v0, Lc/a/a/a/e;->a:Lc/a/a/z;

    return-void
.end method

.method protected constructor <init>(JLc/a/a/u;Lc/a/a/a;)V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0}, Lc/a/a/a/c;-><init>()V

    .line 255
    invoke-virtual {p0, p3}, Lc/a/a/a/e;->a(Lc/a/a/u;)Lc/a/a/u;

    move-result-object v0

    .line 256
    invoke-static {p4}, Lc/a/a/f;->a(Lc/a/a/a;)Lc/a/a/a;

    move-result-object v1

    .line 257
    iput-object v0, p0, Lc/a/a/a/e;->b:Lc/a/a/u;

    .line 258
    invoke-virtual {v1, p0, p1, p2}, Lc/a/a/a;->a(Lc/a/a/z;J)[I

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/e;->c:[I

    .line 259
    return-void
.end method

.method protected constructor <init>(Lc/a/a/y;Lc/a/a/y;Lc/a/a/u;)V
    .locals 6

    .prologue
    .line 122
    invoke-direct {p0}, Lc/a/a/a/c;-><init>()V

    .line 123
    invoke-virtual {p0, p3}, Lc/a/a/a/e;->a(Lc/a/a/u;)Lc/a/a/u;

    move-result-object v1

    .line 124
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 125
    iput-object v1, p0, Lc/a/a/a/e;->b:Lc/a/a/u;

    .line 126
    invoke-virtual {p0}, Lc/a/a/a/e;->h()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lc/a/a/a/e;->c:[I

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {p1}, Lc/a/a/f;->a(Lc/a/a/y;)J

    move-result-wide v2

    .line 129
    invoke-static {p2}, Lc/a/a/f;->a(Lc/a/a/y;)J

    move-result-wide v4

    .line 130
    invoke-static {p1, p2}, Lc/a/a/f;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/a;

    move-result-object v0

    .line 131
    iput-object v1, p0, Lc/a/a/a/e;->b:Lc/a/a/u;

    move-object v1, p0

    .line 132
    invoke-virtual/range {v0 .. v5}, Lc/a/a/a;->a(Lc/a/a/z;JJ)[I

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/e;->c:[I

    goto :goto_0
.end method


# virtual methods
.method protected a(Lc/a/a/u;)Lc/a/a/u;
    .locals 1

    .prologue
    .line 308
    invoke-static {p1}, Lc/a/a/f;->a(Lc/a/a/u;)Lc/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/a/a/u;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lc/a/a/a/e;->b:Lc/a/a/u;

    return-object v0
.end method

.method public c(I)I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lc/a/a/a/e;->c:[I

    aget v0, v0, p1

    return v0
.end method
