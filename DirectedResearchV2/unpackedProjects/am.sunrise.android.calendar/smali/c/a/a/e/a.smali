.class public Lc/a/a/e/a;
.super Lc/a/a/i;
.source "CachedDateTimeZone.java"


# static fields
.field private static final b:I


# instance fields
.field private final c:Lc/a/a/i;

.field private final transient d:[Lc/a/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    const-string v0, "org.joda.time.tz.CachedDateTimeZone.size"

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0x200

    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    sput v0, Lc/a/a/e/a;->b:I

    .line 62
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    add-int/lit8 v1, v0, -0x1

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_2
    if-lez v1, :cond_1

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, v0

    goto :goto_1
.end method

.method private constructor <init>(Lc/a/a/i;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1}, Lc/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/i;-><init>(Ljava/lang/String;)V

    .line 84
    sget v0, Lc/a/a/e/a;->b:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lc/a/a/e/b;

    iput-object v0, p0, Lc/a/a/e/a;->d:[Lc/a/a/e/b;

    .line 88
    iput-object p1, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    .line 89
    return-void
.end method

.method public static a(Lc/a/a/i;)Lc/a/a/e/a;
    .locals 1

    .prologue
    .line 68
    instance-of v0, p0, Lc/a/a/e/a;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lc/a/a/e/a;

    .line 71
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lc/a/a/e/a;

    invoke-direct {v0, p0}, Lc/a/a/e/a;-><init>(Lc/a/a/i;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private g(J)Lc/a/a/e/b;
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 140
    shr-long v0, p1, v6

    long-to-int v1, v0

    .line 141
    iget-object v2, p0, Lc/a/a/e/a;->d:[Lc/a/a/e/b;

    .line 142
    sget v0, Lc/a/a/e/a;->b:I

    and-int v3, v1, v0

    .line 143
    aget-object v0, v2, v3

    .line 144
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lc/a/a/e/b;->a:J

    shr-long/2addr v4, v6

    long-to-int v4, v4

    if-eq v4, v1, :cond_1

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Lc/a/a/e/a;->h(J)Lc/a/a/e/b;

    move-result-object v0

    .line 146
    aput-object v0, v2, v3

    .line 148
    :cond_1
    return-object v0
.end method

.method private h(J)Lc/a/a/e/b;
    .locals 8

    .prologue
    .line 152
    const-wide v0, -0x100000000L

    and-long v2, p1, v0

    .line 153
    new-instance v1, Lc/a/a/e/b;

    iget-object v0, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-direct {v1, v0, v2, v3}, Lc/a/a/e/b;-><init>(Lc/a/a/i;J)V

    .line 155
    const-wide v4, 0xffffffffL

    or-long v6, v2, v4

    move-object v0, v1

    .line 158
    :goto_0
    iget-object v4, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-virtual {v4, v2, v3}, Lc/a/a/i;->e(J)J

    move-result-wide v4

    .line 159
    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 166
    :cond_0
    return-object v1

    .line 163
    :cond_1
    new-instance v2, Lc/a/a/e/b;

    iget-object v3, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-direct {v2, v3, v4, v5}, Lc/a/a/e/b;-><init>(Lc/a/a/i;J)V

    iput-object v2, v0, Lc/a/a/e/b;->c:Lc/a/a/e/b;

    move-object v0, v2

    move-wide v2, v4

    .line 164
    goto :goto_0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lc/a/a/e/a;->g(J)Lc/a/a/e/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/e/b;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)I
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lc/a/a/e/a;->g(J)Lc/a/a/e/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/e/b;->b(J)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-virtual {v0}, Lc/a/a/i;->d()Z

    move-result v0

    return v0
.end method

.method public e(J)J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 127
    if-ne p0, p1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 130
    :cond_0
    instance-of v0, p1, Lc/a/a/e/a;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    check-cast p1, Lc/a/a/e/a;

    iget-object v1, p1, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-virtual {v0, v1}, Lc/a/a/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(J)J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc/a/a/e/a;->c:Lc/a/a/i;

    invoke-virtual {v0}, Lc/a/a/i;->hashCode()I

    move-result v0

    return v0
.end method
