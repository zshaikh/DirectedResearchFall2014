.class public Lcom/acmeaom/android/c/h/n;
.super Lcom/acmeaom/android/c/h/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/g/l;


# static fields
.field private static final a:Lcom/acmeaom/android/a/a/b/aj;

.field public static final g:Lcom/acmeaom/android/c/h/q;


# instance fields
.field private final h:Ljava/lang/Object;

.field private i:Lcom/acmeaom/android/a/g/e;

.field private j:Z

.field private k:F

.field private l:Lcom/acmeaom/android/a/a/b/j;

.field private m:Lcom/acmeaom/android/a/a/b/ae;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/acmeaom/android/c/h/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/h/r;-><init>(Lcom/acmeaom/android/c/h/o;)V

    sput-object v0, Lcom/acmeaom/android/c/h/n;->g:Lcom/acmeaom/android/c/h/q;

    .line 37
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x3fc99999a0000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/c/h/n;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method protected constructor <init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1, p4}, Lcom/acmeaom/android/c/h/a;-><init>(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/h/n;->h:Ljava/lang/Object;

    .line 79
    if-nez p2, :cond_0

    .line 80
    const-string v0, "urlString is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 84
    :cond_0
    iput-object p3, p0, Lcom/acmeaom/android/c/h/n;->m:Lcom/acmeaom/android/a/a/b/ae;

    .line 85
    if-eqz p5, :cond_1

    .line 86
    invoke-virtual {p0, p2}, Lcom/acmeaom/android/c/h/n;->a(Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/acmeaom/android/c/h/n;->k:F

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/j;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/h/n;->l:Lcom/acmeaom/android/a/a/b/j;

    goto :goto_0
.end method

.method private n()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    .line 193
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->l:Lcom/acmeaom/android/a/a/b/j;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->l:Lcom/acmeaom/android/a/a/b/j;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->c()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v0

    iget-wide v0, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    sget-object v2, Lcom/acmeaom/android/c/h/n;->a:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v2, Lcom/acmeaom/android/a/a/b/aj;->b:D

    neg-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/acmeaom/android/c/h/n;->k:F

    .line 196
    iget v0, p0, Lcom/acmeaom/android/c/h/n;->k:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iput v4, p0, Lcom/acmeaom/android/c/h/n;->k:F

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/c/h/n;->l:Lcom/acmeaom/android/a/a/b/j;

    .line 202
    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/n;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/c/h/l;->g:Lcom/acmeaom/android/c/h/l;

    if-ne v0, v1, :cond_0

    .line 203
    sget-object v0, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/n;->a(Lcom/acmeaom/android/c/h/l;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/acmeaom/android/c/h/n;->f:I

    .line 215
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/acmeaom/android/c/h/n;->n()V

    .line 184
    invoke-super/range {p0 .. p5}, Lcom/acmeaom/android/c/h/a;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V

    .line 186
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/g/a;Lcom/acmeaom/android/a/g/e;)V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/acmeaom/android/c/h/n;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    .line 152
    iget-boolean v0, p0, Lcom/acmeaom/android/c/h/n;->j:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/acmeaom/android/c/h/n;->m()V

    .line 154
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->l:Lcom/acmeaom/android/a/a/b/j;

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/acmeaom/android/c/h/l;->g:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/n;->a(Lcom/acmeaom/android/c/h/l;)V

    .line 160
    :goto_0
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/h/n;->b(Lcom/acmeaom/android/a/g/a;)V

    .line 162
    :cond_0
    monitor-exit v1

    .line 163
    return-void

    .line 157
    :cond_1
    sget-object v0, Lcom/acmeaom/android/c/h/l;->f:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/n;->a(Lcom/acmeaom/android/c/h/l;)V

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 109
    iget-object v7, p0, Lcom/acmeaom/android/c/h/n;->h:Ljava/lang/Object;

    monitor-enter v7

    .line 110
    if-nez p1, :cond_0

    .line 111
    :try_start_0
    monitor-exit v7

    .line 138
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/c/h/n;->n:Ljava/lang/String;

    .line 115
    iget-boolean v0, p0, Lcom/acmeaom/android/c/h/n;->j:Z

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/e;->a()V

    .line 119
    :cond_1
    new-instance v0, Lcom/acmeaom/android/a/g/e;

    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/n;->k()Lcom/acmeaom/android/c/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/c/c/f;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/g/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    .line 120
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    iget-boolean v1, p0, Lcom/acmeaom/android/c/h/n;->o:Z

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/g/e;->a(Z)V

    .line 121
    sget-object v0, Lcom/acmeaom/android/c/h/l;->e:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/n;->a(Lcom/acmeaom/android/c/h/l;)V

    .line 124
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    iget-object v1, p0, Lcom/acmeaom/android/c/h/n;->m:Lcom/acmeaom/android/a/a/b/ae;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/g/e;->a(Lcom/acmeaom/android/a/a/b/ae;)V

    .line 125
    sget-object v0, Lcom/acmeaom/android/c/h/l;->d:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/n;->a(Lcom/acmeaom/android/c/h/l;)V

    .line 126
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    new-instance v2, Lcom/acmeaom/android/c/h/o;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/c/h/o;-><init>(Lcom/acmeaom/android/c/h/n;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/acmeaom/android/c/h/p;

    invoke-direct {v4, p0}, Lcom/acmeaom/android/c/h/p;-><init>(Lcom/acmeaom/android/c/h/n;)V

    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/n;->c()Z

    move-result v5

    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/n;->f()Z

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/acmeaom/android/a/g/e;->a(Ljava/lang/String;Lcom/acmeaom/android/a/g/i;Ljava/lang/Object;Lcom/acmeaom/android/a/g/k;ZZ)V

    .line 137
    :cond_2
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->l:Lcom/acmeaom/android/a/a/b/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/acmeaom/android/c/h/n;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/n;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v0

    sget-object v2, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    if-ne v0, v2, :cond_0

    monitor-exit v1

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/c/h/n;->j:Z

    .line 99
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/e;->a()V

    .line 102
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/c/h/n;->i:Lcom/acmeaom/android/a/g/e;

    .line 103
    sget-object v0, Lcom/acmeaom/android/c/h/l;->b:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/n;->a(Lcom/acmeaom/android/c/h/l;)V

    .line 104
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/acmeaom/android/c/h/n;->o:Z

    .line 211
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public j()F
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/acmeaom/android/c/h/a;->j()F

    move-result v0

    iget v1, p0, Lcom/acmeaom/android/c/h/n;->k:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/n;->b()V

    .line 167
    return-void
.end method
