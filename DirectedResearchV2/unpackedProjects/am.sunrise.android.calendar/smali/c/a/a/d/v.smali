.class Lc/a/a/d/v;
.super Ljava/lang/Object;
.source "DateTimeParserBucket.java"


# instance fields
.field final a:Lc/a/a/i;

.field final b:Ljava/lang/Integer;

.field final c:[Lc/a/a/d/u;

.field final d:I

.field final synthetic e:Lc/a/a/d/t;


# direct methods
.method constructor <init>(Lc/a/a/d/t;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lc/a/a/d/v;->e:Lc/a/a/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    invoke-static {p1}, Lc/a/a/d/t;->a(Lc/a/a/d/t;)Lc/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d/v;->a:Lc/a/a/i;

    .line 437
    invoke-static {p1}, Lc/a/a/d/t;->b(Lc/a/a/d/t;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d/v;->b:Ljava/lang/Integer;

    .line 438
    invoke-static {p1}, Lc/a/a/d/t;->c(Lc/a/a/d/t;)[Lc/a/a/d/u;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d/v;->c:[Lc/a/a/d/u;

    .line 439
    invoke-static {p1}, Lc/a/a/d/t;->d(Lc/a/a/d/t;)I

    move-result v0

    iput v0, p0, Lc/a/a/d/v;->d:I

    .line 440
    return-void
.end method


# virtual methods
.method a(Lc/a/a/d/t;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 443
    iget-object v1, p0, Lc/a/a/d/v;->e:Lc/a/a/d/t;

    if-eq p1, v1, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    .line 446
    :cond_0
    iget-object v1, p0, Lc/a/a/d/v;->a:Lc/a/a/i;

    invoke-static {p1, v1}, Lc/a/a/d/t;->a(Lc/a/a/d/t;Lc/a/a/i;)Lc/a/a/i;

    .line 447
    iget-object v1, p0, Lc/a/a/d/v;->b:Ljava/lang/Integer;

    invoke-static {p1, v1}, Lc/a/a/d/t;->a(Lc/a/a/d/t;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 448
    iget-object v1, p0, Lc/a/a/d/v;->c:[Lc/a/a/d/u;

    invoke-static {p1, v1}, Lc/a/a/d/t;->a(Lc/a/a/d/t;[Lc/a/a/d/u;)[Lc/a/a/d/u;

    .line 449
    iget v1, p0, Lc/a/a/d/v;->d:I

    invoke-static {p1}, Lc/a/a/d/t;->d(Lc/a/a/d/t;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 454
    invoke-static {p1, v0}, Lc/a/a/d/t;->a(Lc/a/a/d/t;Z)Z

    .line 456
    :cond_1
    iget v1, p0, Lc/a/a/d/v;->d:I

    invoke-static {p1, v1}, Lc/a/a/d/t;->a(Lc/a/a/d/t;I)I

    goto :goto_0
.end method
