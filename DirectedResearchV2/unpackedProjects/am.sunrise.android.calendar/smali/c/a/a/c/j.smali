.class public final Lc/a/a/c/j;
.super Lc/a/a/l;
.source "MillisDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lc/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lc/a/a/c/j;

    invoke-direct {v0}, Lc/a/a/c/j;-><init>()V

    sput-object v0, Lc/a/a/c/j;->a:Lc/a/a/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lc/a/a/l;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/l;)I
    .locals 5

    .prologue
    .line 134
    invoke-virtual {p1}, Lc/a/a/l;->d()J

    move-result-wide v0

    .line 135
    invoke-virtual {p0}, Lc/a/a/c/j;->d()J

    move-result-wide v2

    .line 137
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_0
    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 141
    const/4 v0, -0x1

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(JI)J
    .locals 2

    .prologue
    .line 117
    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lc/a/a/c/g;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 2

    .prologue
    .line 121
    invoke-static {p1, p2, p3, p4}, Lc/a/a/c/g;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lc/a/a/m;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lc/a/a/m;->a()Lc/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public c(JJ)I
    .locals 2

    .prologue
    .line 125
    invoke-static {p1, p2, p3, p4}, Lc/a/a/c/g;->b(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lc/a/a/c/g;->a(J)I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lc/a/a/l;

    invoke-virtual {p0, p1}, Lc/a/a/c/j;->a(Lc/a/a/l;)I

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public d(JJ)J
    .locals 2

    .prologue
    .line 129
    invoke-static {p1, p2, p3, p4}, Lc/a/a/c/g;->b(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 148
    instance-of v1, p1, Lc/a/a/c/j;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lc/a/a/c/j;->d()J

    move-result-wide v1

    check-cast p1, Lc/a/a/c/j;

    invoke-virtual {p1}, Lc/a/a/c/j;->d()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 151
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lc/a/a/c/j;->d()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "DurationField[millis]"

    return-object v0
.end method
