.class public final Ldolphin/util/s;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Z

.field f:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ldolphin/util/s;->b:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Ldolphin/util/s;->c:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Ldolphin/util/s;->d:Ljava/lang/String;

    .line 68
    iput p4, p0, Ldolphin/util/s;->f:I

    .line 69
    invoke-static {p1, p2, p3}, Ldolphin/util/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/util/s;->a:Ljava/lang/String;

    .line 70
    iput-boolean p5, p0, Ldolphin/util/s;->e:Z

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 78
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ldolphin/util/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 79
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    const-string v0, "%s||%s||%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Ldolphin/util/s;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/util/s;->f:I

    .line 115
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Ldolphin/util/s;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Ldolphin/util/s;->f:I

    .line 111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 133
    if-eqz p1, :cond_0

    instance-of v0, p1, Ldolphin/util/s;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 136
    :cond_1
    check-cast p1, Ldolphin/util/s;

    .line 137
    iget-object v0, p0, Ldolphin/util/s;->a:Ljava/lang/String;

    iget-object v1, p1, Ldolphin/util/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ldolphin/util/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    const-string v0, "(%s,%s,%s,%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ldolphin/util/s;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ldolphin/util/s;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ldolphin/util/s;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ldolphin/util/s;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
