.class public Lcom/acmeaom/android/c/g/c/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/c/a;


# instance fields
.field private a:I

.field private b:Lcom/acmeaom/android/a/a/c/d;

.field private c:I

.field private d:Z

.field private final e:Lcom/acmeaom/android/a/a/c/n;

.field private final f:Lcom/acmeaom/android/a/a/c/l;

.field private final g:Lcom/acmeaom/android/a/a/d/b;

.field private final h:Lcom/acmeaom/android/a/g/m;

.field private i:Lcom/acmeaom/android/c/b;

.field private j:Lcom/acmeaom/android/c/g/a/a;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    .line 59
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/l;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->f:Lcom/acmeaom/android/a/a/c/l;

    .line 60
    new-instance v0, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/d/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->g:Lcom/acmeaom/android/a/a/d/b;

    .line 61
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->h:Lcom/acmeaom/android/a/g/m;

    .line 70
    if-nez p1, :cond_0

    .line 71
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/c/g/c/e;->b:Lcom/acmeaom/android/a/a/c/d;

    .line 75
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->f:Lcom/acmeaom/android/a/a/c/l;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 76
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0, p2}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/i/i;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/acmeaom/android/a/i/i;->a()Lcom/acmeaom/android/a/a/c/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/acmeaom/android/a/i/i;->b()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/c/g/c/e;-><init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;Lcom/acmeaom/android/a/i/d;F)V
    .locals 13

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v2, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v2}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    iput-object v2, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    .line 59
    new-instance v2, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v2}, Lcom/acmeaom/android/a/a/c/l;-><init>()V

    iput-object v2, p0, Lcom/acmeaom/android/c/g/c/e;->f:Lcom/acmeaom/android/a/a/c/l;

    .line 60
    new-instance v2, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v2}, Lcom/acmeaom/android/a/a/d/b;-><init>()V

    iput-object v2, p0, Lcom/acmeaom/android/c/g/c/e;->g:Lcom/acmeaom/android/a/a/d/b;

    .line 61
    new-instance v2, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v2}, Lcom/acmeaom/android/a/g/m;-><init>()V

    iput-object v2, p0, Lcom/acmeaom/android/c/g/c/e;->h:Lcom/acmeaom/android/a/g/m;

    .line 81
    sget-object v2, Lcom/acmeaom/android/c/b;->b:Lcom/acmeaom/android/c/b;

    iput-object v2, p0, Lcom/acmeaom/android/c/g/c/e;->i:Lcom/acmeaom/android/c/b;

    .line 83
    const/high16 v2, 0x40c00000

    .line 84
    const/4 v9, 0x0

    .line 86
    new-instance v10, Lcom/acmeaom/android/c/e/a;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v10, p1, p2, v0, v1}, Lcom/acmeaom/android/c/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;)V

    .line 87
    invoke-virtual {v10}, Lcom/acmeaom/android/c/e/a;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v11

    .line 88
    iget v3, v11, Lcom/acmeaom/android/a/a/c/n;->a:F

    invoke-static {v3}, Lcom/acmeaom/android/a/b/a;->a(F)F

    move-result v3

    add-float/2addr v3, v2

    iget v4, v11, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v4}, Lcom/acmeaom/android/a/b/a;->a(F)F

    move-result v4

    add-float/2addr v2, v4

    invoke-static {v3, v2}, Lcom/acmeaom/android/a/a/c/o;->b(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v12

    .line 93
    invoke-static {}, Lcom/acmeaom/android/a/a/c/c;->a()Lcom/acmeaom/android/a/a/c/c;

    move-result-object v7

    .line 95
    iget v2, v12, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float v2, v2, p6

    float-to-int v3, v2

    .line 96
    iget v2, v12, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float v2, v2, p6

    float-to-int v4, v2

    .line 97
    const/4 v2, 0x0

    const/16 v5, 0x8

    mul-int/lit8 v6, v3, 0x4

    sget-object v8, Lcom/acmeaom/android/a/a/c/h;->b:Lcom/acmeaom/android/a/a/c/h;

    invoke-virtual {v8}, Lcom/acmeaom/android/a/a/c/h;->ordinal()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/acmeaom/android/a/a/c/d;->a(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v2

    .line 105
    invoke-static {v7}, Lcom/acmeaom/android/a/a/c/c;->a(Lcom/acmeaom/android/a/a/c/c;)V

    .line 107
    new-instance v3, Lcom/acmeaom/android/a/a/c/m;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lcom/acmeaom/android/a/a/c/m;-><init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V

    .line 108
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a/c/i;->a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/c/i;

    move-result-object v3

    .line 110
    move/from16 v0, p6

    move/from16 v1, p6

    invoke-static {v2, v0, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;FF)V

    .line 111
    invoke-virtual/range {p5 .. p5}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 112
    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 113
    invoke-static {v3}, Lcom/acmeaom/android/a/a/c/i;->a(Lcom/acmeaom/android/a/a/c/i;)V

    .line 114
    invoke-static {v2}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;)V

    .line 116
    iget v3, v12, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v4, v11, Lcom/acmeaom/android/a/a/c/n;->a:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    mul-float/2addr v3, v4

    iget v4, v12, Lcom/acmeaom/android/a/a/c/n;->b:F

    iget v5, v11, Lcom/acmeaom/android/a/a/c/n;->b:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    mul-float/2addr v4, v5

    add-float/2addr v4, v9

    iget v5, v11, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v6, v11, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v3, v4, v5, v6}, Lcom/acmeaom/android/a/a/c/o;->a(FFFF)Lcom/acmeaom/android/a/a/c/m;

    move-result-object v3

    .line 123
    invoke-virtual {v10, v2, v3}, Lcom/acmeaom/android/c/e/a;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/m;)V

    .line 129
    iput-object v2, p0, Lcom/acmeaom/android/c/g/c/e;->b:Lcom/acmeaom/android/a/a/c/d;

    .line 130
    iget-object v2, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v2, v12}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 131
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 244
    iput p1, p0, Lcom/acmeaom/android/c/g/c/e;->c:I

    .line 245
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/acmeaom/android/c/g/c/e;->a:I

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p5}, Lcom/acmeaom/android/c/g/a;->c()Lcom/acmeaom/android/c/g/b/d;

    move-result-object v0

    .line 169
    iget v1, p0, Lcom/acmeaom/android/c/g/c/e;->a:I

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/d;->a(I)V

    .line 170
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/e;->h:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/d;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 171
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/e;->f:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/d;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 172
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/e;->j:Lcom/acmeaom/android/c/g/a/a;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/e;->j:Lcom/acmeaom/android/c/g/a/a;

    invoke-interface {v1, p4}, Lcom/acmeaom/android/c/g/a/a;->a(Lcom/acmeaom/android/a/a/b/aj;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/d;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 177
    :goto_1
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/d;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 179
    invoke-virtual {v0, p1, p3}, Lcom/acmeaom/android/c/g/b/d;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 180
    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/d;->d()V

    .line 181
    invoke-virtual {v0, p2, p3}, Lcom/acmeaom/android/c/g/b/d;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 182
    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/d;->d()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/d;->a(Lcom/acmeaom/android/a/a/a/b;)V

    goto :goto_1
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->f:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 277
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/d/b;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->g:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/d/b;->b(Lcom/acmeaom/android/a/a/d/b;)V

    .line 139
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->h:Lcom/acmeaom/android/a/g/m;

    invoke-static {p1}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 140
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/f/l;)V
    .locals 1

    .prologue
    .line 260
    iget v0, p1, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/g/c/e;->a(I)V

    .line 261
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/g/m;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->h:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 151
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->g:Lcom/acmeaom/android/a/a/d/b;

    invoke-static {p1}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/a/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/d/b;->b(Lcom/acmeaom/android/a/a/d/b;)V

    .line 152
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/b;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/acmeaom/android/c/g/c/e;->i:Lcom/acmeaom/android/c/b;

    .line 135
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/g/a/a;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/acmeaom/android/c/g/c/e;->j:Lcom/acmeaom/android/c/g/a/a;

    .line 269
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/g/a;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->b:Lcom/acmeaom/android/a/a/c/d;

    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/e;->i:Lcom/acmeaom/android/c/b;

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/g/a;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/c/b;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/c/e;->a:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->b:Lcom/acmeaom/android/a/a/c/d;

    .line 188
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 7

    .prologue
    const/high16 v3, 0x40c00000

    const/high16 v5, 0x40400000

    const/high16 v6, 0x3f000000

    .line 201
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/c/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->h:Lcom/acmeaom/android/a/g/m;

    invoke-static {v0, p2}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v1}, Lcom/acmeaom/android/a/a/c/m;-><init>()V

    .line 219
    iget-object v2, v1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    invoke-static {v3, v3}, Lcom/acmeaom/android/a/a/c/o;->b(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 220
    iget-object v2, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    sub-float/2addr v3, v5

    iget v4, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 222
    new-instance v2, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v2}, Lcom/acmeaom/android/a/a/c/m;-><init>()V

    .line 223
    iget-object v3, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget-object v4, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v3, v4}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 224
    iget-object v3, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v4, v0, Lcom/acmeaom/android/a/g/m;->d:F

    iget-object v5, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    iget v5, v5, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v0, v0, Lcom/acmeaom/android/a/g/m;->e:F

    iget-object v5, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    iget v5, v5, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    invoke-static {v4, v0}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 227
    iget-object v0, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v0, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v4, p0, Lcom/acmeaom/android/c/g/c/e;->f:Lcom/acmeaom/android/a/a/c/l;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/l;->a:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 228
    iget-object v0, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v0, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v4, p0, Lcom/acmeaom/android/c/g/c/e;->f:Lcom/acmeaom/android/a/a/c/l;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/l;->b:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 230
    invoke-static {v2, v1}, Lcom/acmeaom/android/a/a/c/o;->a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->j:Lcom/acmeaom/android/c/g/a/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 249
    :goto_0
    if-eqz v0, :cond_0

    .line 252
    :cond_0
    return v0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/acmeaom/android/c/g/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    iget v0, p0, Lcom/acmeaom/android/c/g/c/e;->a:I

    if-eqz v0, :cond_0

    .line 192
    new-array v0, v3, [I

    iget v1, p0, Lcom/acmeaom/android/c/g/c/e;->a:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 193
    iput v2, p0, Lcom/acmeaom/android/c/g/c/e;->a:I

    .line 195
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/acmeaom/android/c/g/c/e;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/acmeaom/android/c/g/c/e;->c:I

    return v0
.end method

.method public f()Lcom/acmeaom/android/a/a/d/b;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->g:Lcom/acmeaom/android/a/a/d/b;

    return-object v0
.end method

.method public g()Lcom/acmeaom/android/a/a/c/n;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/e;->e:Lcom/acmeaom/android/a/a/c/n;

    return-object v0
.end method
