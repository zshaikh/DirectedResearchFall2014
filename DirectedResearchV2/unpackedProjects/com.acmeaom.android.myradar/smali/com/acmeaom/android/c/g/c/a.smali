.class public Lcom/acmeaom/android/c/g/c/a;
.super Lcom/acmeaom/android/c/g/c/c;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/a/i/c;

.field private b:Lcom/acmeaom/android/a/g/m;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/b/e;Z)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/e;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/acmeaom/android/c/g/c/a;-><init>(Ljava/util/ArrayList;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x4

    invoke-static {p1, p2}, Lcom/acmeaom/android/c/g/c/a;->a(Ljava/util/ArrayList;Z)[Lcom/acmeaom/android/a/g/n;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/acmeaom/android/c/g/c/a;->b(Ljava/util/ArrayList;Z)[S

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/acmeaom/android/c/g/c/c;-><init>(I[Lcom/acmeaom/android/a/g/n;[S)V

    .line 43
    invoke-static {p1}, Lcom/acmeaom/android/c/h/m;->a(Ljava/util/ArrayList;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/a;->b:Lcom/acmeaom/android/a/g/m;

    .line 44
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/g/c/a;->a(Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 129
    const/4 v0, 0x3

    if-ge v2, v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/a;->a:Lcom/acmeaom/android/a/i/c;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/a;)Lcom/acmeaom/android/a/g/n;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/a;->a:Lcom/acmeaom/android/a/i/c;

    iget v3, v0, Lcom/acmeaom/android/a/g/n;->b:F

    iget v0, v0, Lcom/acmeaom/android/a/g/n;->c:F

    invoke-static {v3, v0}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/i/c;->b(Lcom/acmeaom/android/a/a/c/l;)V

    .line 138
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    .line 142
    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/a;)Lcom/acmeaom/android/a/g/n;

    move-result-object v0

    .line 143
    iget-object v3, p0, Lcom/acmeaom/android/c/g/c/a;->a:Lcom/acmeaom/android/a/i/c;

    iget v4, v0, Lcom/acmeaom/android/a/g/n;->b:F

    iget v0, v0, Lcom/acmeaom/android/a/g/n;->c:F

    invoke-static {v4, v0}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/a;->a:Lcom/acmeaom/android/a/i/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Z)[Lcom/acmeaom/android/a/g/n;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    new-array v0, v2, [Lcom/acmeaom/android/a/g/n;

    .line 105
    :goto_0
    return-object v0

    .line 57
    :cond_0
    if-eqz p1, :cond_4

    .line 58
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/a;->a()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v3

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/a;->a()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    .line 61
    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-nez v0, :cond_3

    .line 63
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 67
    :cond_1
    new-instance v3, Lcom/acmeaom/android/a/a/b/af;

    invoke-direct {v3, v2, v0}, Lcom/acmeaom/android/a/a/b/af;-><init>(II)V

    .line 69
    invoke-static {p0, v3}, Lcom/acmeaom/android/a/a/b/d;->a(Ljava/util/List;Lcom/acmeaom/android/a/a/b/af;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 72
    const-string v0, "can\'t create graphic with no trimmed locations"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    new-instance v3, Lcom/acmeaom/android/a/h/a;

    invoke-direct {v3, v0, v1}, Lcom/acmeaom/android/a/h/a;-><init>(Ljava/util/List;Lcom/acmeaom/android/a/h/b;)V

    .line 76
    invoke-virtual {v3}, Lcom/acmeaom/android/a/h/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 85
    :goto_2
    if-nez v3, :cond_5

    .line 86
    const-string v0, "could not triangulate locations: %@"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 87
    goto :goto_0

    .line 78
    :cond_3
    new-instance v0, Lcom/acmeaom/android/a/h/a;

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/a/h/a;-><init>(Ljava/util/List;Lcom/acmeaom/android/a/h/b;)V

    .line 79
    invoke-virtual {v0}, Lcom/acmeaom/android/a/h/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v3, p0

    .line 82
    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 92
    const/4 v0, 0x2

    if-gt v4, v0, :cond_6

    .line 93
    const-string v0, "Error: Not enough points for triangle!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 94
    goto/16 :goto_0

    .line 98
    :cond_6
    new-array v1, v4, [Lcom/acmeaom/android/a/g/n;

    .line 100
    :goto_3
    if-ge v2, v4, :cond_7

    .line 101
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    .line 102
    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/a;)Lcom/acmeaom/android/a/g/n;

    move-result-object v0

    aput-object v0, v1, v2

    .line 100
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 105
    goto/16 :goto_0
.end method

.method private static b(Ljava/util/ArrayList;Z)[S
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    new-array v0, v0, [S

    .line 123
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-static {p0, p1}, Lcom/acmeaom/android/c/g/c/a;->a(Ljava/util/ArrayList;Z)[Lcom/acmeaom/android/a/g/n;

    move-result-object v2

    .line 113
    if-nez v2, :cond_1

    .line 114
    new-array v0, v0, [S

    goto :goto_0

    .line 118
    :cond_1
    array-length v1, v2

    new-array v1, v1, [S

    .line 119
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 120
    aput-short v0, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/c/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-static {p1, p3}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/acmeaom/android/c/g/c/a;->a:Lcom/acmeaom/android/a/i/c;

    if-eqz v2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/a;->a:Lcom/acmeaom/android/a/i/c;

    iget v2, v1, Lcom/acmeaom/android/a/g/m;->d:F

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->e:F

    invoke-static {v2, v1}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/acmeaom/android/c/g/c/a;->c:Z

    return v0
.end method
