.class public Lcom/acmeaom/android/c/d/e;
.super Lcom/acmeaom/android/a/i/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/g/s;


# static fields
.field private static final G:Lcom/acmeaom/android/c/i/b;

.field private static final H:Lcom/acmeaom/android/c/i/b;

.field static final synthetic h:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:F

.field private D:F

.field private E:F

.field private F:Lcom/acmeaom/android/a/d/e;

.field private final i:Ljava/util/Set;

.field private final j:Lcom/acmeaom/android/a/g/m;

.field private final k:Lcom/acmeaom/android/c/g/b;

.field private final l:Lcom/acmeaom/android/a/e/b;

.field private final m:Lcom/acmeaom/android/a/c/g;

.field private final n:Lcom/acmeaom/android/a/a/b/n;

.field private final o:Lcom/acmeaom/android/a/a/a/b;

.field private final p:Lcom/acmeaom/android/a/a/a/b;

.field private final q:Lcom/acmeaom/android/a/a/a/b;

.field private final r:Lcom/acmeaom/android/a/a/a/b;

.field private final s:Lcom/acmeaom/android/a/a/a/b;

.field private final t:[D

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    const-class v0, Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/c/d/e;->h:Z

    .line 705
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/d/e;->G:Lcom/acmeaom/android/c/i/b;

    .line 707
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/d/e;->H:Lcom/acmeaom/android/c/i/b;

    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/d/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/i/a;-><init>(Lcom/acmeaom/android/a/d/d;)V

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    .line 115
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->j:Lcom/acmeaom/android/a/g/m;

    .line 118
    invoke-static {}, Lcom/acmeaom/android/a/e/a;->a()Lcom/acmeaom/android/a/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->l:Lcom/acmeaom/android/a/e/b;

    .line 120
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    .line 125
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->o:Lcom/acmeaom/android/a/a/a/b;

    .line 126
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    .line 127
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    .line 128
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    .line 129
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    .line 131
    const/16 v0, 0x10

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    .line 138
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->F()F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/d/e;->y:F

    .line 153
    const/4 v0, -0x2

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/acmeaom/android/a/c/i;->a:Lcom/acmeaom/android/a/c/i;

    invoke-static {v1, v3, v3, v0}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/i;IILcom/acmeaom/android/a/c/c;)Lcom/acmeaom/android/a/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->m:Lcom/acmeaom/android/a/c/g;

    .line 156
    new-instance v0, Lcom/acmeaom/android/c/g/b;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/c/g/b;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    .line 158
    const/high16 v0, 0x3fc00000

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/d/e;->b(F)V

    .line 159
    const/high16 v0, 0x41600000

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/d/e;->c(F)V

    .line 161
    sget-object v0, Lcom/acmeaom/android/c/d/e;->b:Lcom/acmeaom/android/a/g/m;

    const/high16 v1, 0x42700000

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/g/m;F)V

    .line 163
    new-instance v0, Lcom/acmeaom/android/a/i/l;

    new-instance v1, Lcom/acmeaom/android/c/d/f;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/d/f;-><init>(Lcom/acmeaom/android/c/d/e;)V

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/a/i/l;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/i/n;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/i/l;)V

    .line 170
    new-instance v0, Lcom/acmeaom/android/a/i/l;

    new-instance v1, Lcom/acmeaom/android/c/d/g;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/d/g;-><init>(Lcom/acmeaom/android/c/d/e;)V

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/a/i/l;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/i/n;)V

    .line 175
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/l;->a(I)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/i/l;)V

    .line 178
    sget-object v0, Lcom/acmeaom/android/a/i/b;->a:Lcom/acmeaom/android/a/i/b;

    iput-object v0, p0, Lcom/acmeaom/android/c/d/e;->a:Lcom/acmeaom/android/a/i/b;

    .line 179
    return-void
.end method

.method private F()F
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/acmeaom/android/a/i/e;->a()Lcom/acmeaom/android/a/i/e;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    iget-object v0, v0, Lcom/acmeaom/android/a/i/e;->a:Lcom/acmeaom/android/a/i/p;

    .line 244
    :goto_0
    sget-object v1, Lcom/acmeaom/android/c/d/i;->a:[I

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/p;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 251
    const v0, 0x3ad1b717

    .line 255
    :goto_1
    return v0

    .line 241
    :cond_0
    sget-object v0, Lcom/acmeaom/android/a/i/p;->a:Lcom/acmeaom/android/a/i/p;

    goto :goto_0

    .line 247
    :pswitch_0
    const v0, 0x3b23d70a

    .line 248
    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private G()Z
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 627
    const-string v0, "method must be called with transform lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    :cond_0
    iget v0, p0, Lcom/acmeaom/android/c/d/e;->x:F

    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/c/d/e;->b(FLcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    return v0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 900
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/a/e/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/acmeaom/android/c/d/e;->z:J

    .line 904
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 905
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 906
    return-void
.end method

.method private I()V
    .locals 8

    .prologue
    const/high16 v7, -0x41000000

    const/4 v6, 0x0

    .line 1001
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v0

    .line 1003
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->m()Lcom/acmeaom/android/a/a/c/m;

    move-result-object v1

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v1, v0

    .line 1004
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->m()Lcom/acmeaom/android/a/a/c/m;

    move-result-object v2

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v2, v0

    .line 1007
    cmpl-float v3, v1, v6

    if-eqz v3, :cond_0

    cmpl-float v3, v2, v6

    if-nez v3, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    new-instance v3, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v3}, Lcom/acmeaom/android/a/a/c/m;-><init>()V

    .line 1012
    iget-object v4, v3, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    mul-float v5, v1, v7

    div-float/2addr v5, v0

    iput v5, v4, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 1013
    iget-object v4, v3, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    mul-float v5, v2, v7

    div-float/2addr v5, v0

    iput v5, v4, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 1014
    iget-object v4, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    const/high16 v5, 0x40000000

    mul-float/2addr v5, v0

    div-float v1, v5, v1

    iput v1, v4, Lcom/acmeaom/android/a/a/c/n;->a:F

    .line 1015
    iget-object v1, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    const/high16 v4, -0x40000000

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    iput v0, v1, Lcom/acmeaom/android/a/a/c/n;->b:F

    .line 1016
    iget-object v0, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget-object v1, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v0, v1, v6}, Lcom/acmeaom/android/a/g/u;->a(FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 1019
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 1021
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->o:Lcom/acmeaom/android/a/a/a/b;

    iget-object v2, v3, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-static {v0, v2, v3, v6}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 1025
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->G()Z

    .line 1026
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    goto :goto_0
.end method

.method private J()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 1030
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 1032
    const-string v0, "method must be called with transform lock"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/a/e/a;->b()J

    move-result-wide v0

    .line 1038
    new-instance v5, Lcom/acmeaom/android/a/g/n;

    iget-object v6, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    iget v6, v6, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget-object v7, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    iget v7, v7, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget-object v8, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    iget v8, v8, Lcom/acmeaom/android/a/a/a/b;->o:F

    invoke-direct {v5, v6, v7, v8}, Lcom/acmeaom/android/a/g/n;-><init>(FFF)V

    .line 1040
    new-instance v6, Lcom/acmeaom/android/a/g/n;

    iget-object v7, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    iget v7, v7, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget-object v8, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    iget v8, v8, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget-object v9, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    iget v9, v9, Lcom/acmeaom/android/a/a/a/b;->o:F

    invoke-direct {v6, v7, v8, v9}, Lcom/acmeaom/android/a/g/n;-><init>(FFF)V

    .line 1045
    invoke-static {v5, v6}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/n;Lcom/acmeaom/android/a/g/n;)F

    move-result v7

    .line 1046
    invoke-static {v5}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/n;)F

    move-result v5

    invoke-static {v6}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/n;)F

    move-result v6

    mul-float/2addr v5, v6

    .line 1048
    mul-float/2addr v5, v7

    .line 1049
    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1051
    iput-wide v0, p0, Lcom/acmeaom/android/c/d/e;->z:J

    .line 1052
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 1080
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-wide v5, p0, Lcom/acmeaom/android/c/d/e;->z:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/acmeaom/android/c/d/e;->a(JJ)D

    move-result-wide v5

    .line 1057
    iput-wide v0, p0, Lcom/acmeaom/android/c/d/e;->z:J

    .line 1060
    cmpl-double v0, v5, v2

    if-lez v0, :cond_2

    .line 1062
    invoke-static {v5, v6}, Lcom/acmeaom/android/c/d/a;->b(D)D

    move-result-wide v2

    .line 1063
    invoke-static {v5, v6}, Lcom/acmeaom/android/c/d/a;->c(D)D

    move-result-wide v0

    .line 1070
    :goto_1
    iget-object v7, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v7}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v7

    float-to-double v7, v7

    .line 1072
    :goto_2
    const/16 v9, 0x10

    if-ge v4, v9, :cond_3

    .line 1073
    iget-object v9, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    aget-wide v9, v9, v4

    .line 1074
    iget-object v11, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v11, v4}, Lcom/acmeaom/android/a/a/a/b;->a(I)F

    move-result v11

    iget-object v12, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v12, v4}, Lcom/acmeaom/android/a/a/a/b;->a(I)F

    move-result v12

    sub-float/2addr v11, v12

    float-to-double v11, v11

    .line 1075
    mul-double v13, v5, v7

    div-double/2addr v11, v13

    .line 1076
    iget-object v13, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    mul-double/2addr v9, v2

    mul-double/2addr v11, v0

    add-double/2addr v9, v11

    aput-wide v9, v13, v4

    .line 1072
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1066
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L

    goto :goto_1

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    goto :goto_0
.end method

.method private K()Z
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/4 v0, 0x0

    .line 1083
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 1085
    const-string v1, "method must be called with transform lock"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v1, v0

    .line 1089
    :goto_0
    if-ge v1, v13, :cond_5

    .line 1090
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/d/a;->d(D)D

    move-result-wide v2

    .line 1091
    const v4, 0x3cc49ba6

    iget-object v5, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v5}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v5

    div-float/2addr v4, v5

    .line 1093
    float-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    :cond_1
    const/4 v1, 0x1

    .line 1099
    :goto_1
    if-nez v1, :cond_3

    .line 1125
    :cond_2
    :goto_2
    return v0

    .line 1104
    :cond_3
    invoke-static {}, Lcom/acmeaom/android/a/e/a;->b()J

    move-result-wide v1

    .line 1105
    iget-wide v3, p0, Lcom/acmeaom/android/c/d/e;->z:J

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/acmeaom/android/c/d/e;->a(JJ)D

    move-result-wide v3

    .line 1106
    iput-wide v1, p0, Lcom/acmeaom/android/c/d/e;->z:J

    .line 1108
    invoke-static {v3, v4}, Lcom/acmeaom/android/c/d/a;->b(D)D

    move-result-wide v1

    .line 1109
    new-instance v5, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v5}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    .line 1110
    iget-object v6, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v6}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v6

    float-to-double v6, v6

    .line 1111
    :goto_3
    if-ge v0, v13, :cond_4

    .line 1112
    iget-object v8, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    aget-wide v8, v8, v0

    .line 1113
    mul-double/2addr v8, v1

    .line 1114
    iget-object v10, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    double-to-float v11, v8

    float-to-double v11, v11

    aput-wide v11, v10, v0

    .line 1116
    mul-double/2addr v8, v3

    mul-double/2addr v8, v6

    .line 1117
    iget-object v10, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v10, v0}, Lcom/acmeaom/android/a/a/a/b;->a(I)F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-virtual {v5, v0, v8}, Lcom/acmeaom/android/a/a/a/b;->a(IF)V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1120
    :cond_4
    iget v0, p0, Lcom/acmeaom/android/c/d/e;->x:F

    invoke-direct {p0, v0, v5}, Lcom/acmeaom/android/c/d/e;->b(FLcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    .line 1121
    if-eqz v0, :cond_2

    .line 1122
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1, v5}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 1123
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->s:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1, v5}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method private a(JJ)D
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 1129
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 1131
    const-string v0, "method must be called with transform lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    :cond_0
    sub-long v0, p3, p1

    .line 1136
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->l:Lcom/acmeaom/android/a/e/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-long/2addr v0, v4

    long-to-double v0, v0

    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->l:Lcom/acmeaom/android/a/e/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v2, 0x9896800

    mul-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 1140
    return-wide v0
.end method

.method static synthetic a(Lcom/acmeaom/android/c/d/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 484
    const-string v0, "Tapped: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    check-cast p1, Lcom/acmeaom/android/a/i/l;

    .line 486
    invoke-virtual {p1}, Lcom/acmeaom/android/a/i/l;->a()Lcom/acmeaom/android/a/i/g;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/a/i/g;->a:Lcom/acmeaom/android/a/i/g;

    if-ne v0, v1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/i/l;->a(Ljava/lang/Object;)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 489
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    iget-object v3, p0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1, v0, v2, v3}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 492
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 493
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->F:Lcom/acmeaom/android/a/d/e;

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->F:Lcom/acmeaom/android/a/d/e;

    invoke-interface {v2, v1, v0}, Lcom/acmeaom/android/a/d/e;->a(Ljava/util/List;Lcom/acmeaom/android/a/a/c/l;)V

    .line 499
    :cond_0
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    invoke-static {p1, p2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method private a(FLcom/acmeaom/android/a/a/a/b;)Z
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 677
    const-string v0, "method must be called with transform lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/c/d/e;->b(FLcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    .line 681
    if-eqz v0, :cond_2

    .line 682
    iget v1, p0, Lcom/acmeaom/android/c/d/e;->x:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 683
    const-string v1, "tilt"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/String;)V

    .line 684
    iput p1, p0, Lcom/acmeaom/android/c/d/e;->x:F

    .line 685
    const-string v1, "tilt"

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/String;)V

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1, p2}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 688
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->J()V

    .line 691
    :cond_2
    return v0
.end method

.method private a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 743
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 745
    const-string v2, "method must be called with transform lock"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 749
    const-string v1, "new map transform is invalid"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    :goto_0
    return v0

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 754
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 756
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->o:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 760
    iget-object v2, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    iget-object v3, p0, Lcom/acmeaom/android/c/d/e;->o:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v2, v0, v3}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 761
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->m:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/g;I)V

    move v0, v1

    .line 763
    goto :goto_0
.end method

.method public static b(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 209
    const v0, 0x3716b659

    mul-float/2addr v0, p1

    .line 210
    invoke-static {p0, v0}, Lcom/acmeaom/android/c/d/e;->c(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/acmeaom/android/c/d/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 19

    .prologue
    .line 506
    const-string v2, "Double tapped: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    check-cast p1, Lcom/acmeaom/android/a/i/l;

    .line 508
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/l;->a(Ljava/lang/Object;)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 511
    invoke-static {}, Lcom/acmeaom/android/a/e/a;->b()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/acmeaom/android/c/d/e;->z:J

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 519
    const/high16 v3, 0x3f800000

    .line 520
    neg-float v4, v3

    invoke-static {v2, v4}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/g/m;

    move-result-object v8

    .line 521
    new-instance v2, Lcom/acmeaom/android/a/a/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget v15, v8, Lcom/acmeaom/android/a/g/m;->d:F

    iget v0, v8, Lcom/acmeaom/android/a/g/m;->e:F

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v8, v3

    move v13, v3

    invoke-direct/range {v2 .. v18}, Lcom/acmeaom/android/a/a/a/b;-><init>(FFFFFFFFFFFFFFFF)V

    .line 529
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acmeaom/android/c/d/e;->t:[D

    aget-wide v5, v4, v3

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/a/a/a/b;->a(I)F

    move-result v7

    const/high16 v8, 0x3f800000

    mul-float/2addr v7, v8

    float-to-double v7, v7

    add-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/d/e;->K()Z

    move-result v2

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 536
    if-eqz v2, :cond_1

    .line 537
    new-instance v2, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v3, 0x3f91111120000000L

    invoke-direct {v2, v3, v4}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 541
    :goto_1
    return-void

    .line 539
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    goto :goto_1
.end method

.method private b(FLcom/acmeaom/android/a/a/a/b;)Z
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 698
    const-string v0, "method must be called with transform lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/c/d/e;->c(FLcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 702
    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/d/e;->c(Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 662
    const-string v0, "method must be called with transform lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    :cond_0
    iget v0, p0, Lcom/acmeaom/android/c/d/e;->x:F

    invoke-direct {p0, v0, p1}, Lcom/acmeaom/android/c/d/e;->b(FLcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    .line 666
    if-eqz v0, :cond_1

    .line 667
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 668
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->J()V

    .line 670
    :cond_1
    return v0
.end method

.method private b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 767
    iget-boolean v1, p0, Lcom/acmeaom/android/c/d/e;->B:Z

    if-eqz v1, :cond_0

    .line 768
    invoke-static {p1}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v1

    .line 769
    iget v2, p0, Lcom/acmeaom/android/c/d/e;->u:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    .line 803
    :goto_0
    return v0

    .line 775
    :cond_0
    invoke-static {p1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v1

    float-to-double v1, v1

    .line 778
    iget v3, p0, Lcom/acmeaom/android/c/d/e;->v:F

    float-to-double v3, v3

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/acmeaom/android/c/d/e;->w:F

    float-to-double v3, v3

    cmpg-double v3, v1, v3

    if-lez v3, :cond_2

    .line 779
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transform is invalid because it is off scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/acmeaom/android/c/d/e;->v:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/acmeaom/android/c/d/e;->w:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 784
    :cond_2
    invoke-static {p1, p2}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 786
    const-string v1, "aborting gesture because new transform is non-invertible"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 791
    :cond_3
    invoke-direct {p0, p2}, Lcom/acmeaom/android/c/d/e;->d(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    .line 793
    new-instance v2, Lcom/acmeaom/android/a/g/p;

    invoke-direct {v2}, Lcom/acmeaom/android/a/g/p;-><init>()V

    .line 794
    iget-object v3, v2, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    const v4, -0x33e7203e

    iput v4, v3, Lcom/acmeaom/android/a/g/m;->d:F

    .line 795
    iget-object v3, v2, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    const v4, -0x3467203e

    iput v4, v3, Lcom/acmeaom/android/a/g/m;->e:F

    .line 796
    iget-object v3, v2, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    const v4, 0x4c98dfc2

    iput v4, v3, Lcom/acmeaom/android/a/g/m;->d:F

    .line 797
    iget-object v3, v2, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    const v4, 0x4c18dfc2

    iput v4, v3, Lcom/acmeaom/android/a/g/m;->e:F

    .line 798
    invoke-static {v1}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, v1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/g/m;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 799
    :cond_4
    const-string v1, "aborting gesture because new screen center is off map"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 803
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private c(FLcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000

    const/4 v4, 0x0

    .line 711
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 713
    const-string v0, "method must be called with transform lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :cond_0
    sget-object v0, Lcom/acmeaom/android/c/d/e;->G:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/c/m;

    .line 717
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/a/c/m;)V

    .line 718
    sget-object v1, Lcom/acmeaom/android/c/d/e;->H:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/a/b;

    .line 719
    iget-object v2, v0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v3, v0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v0, v0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v3

    invoke-static {v2, v0, v4, v1}, Lcom/acmeaom/android/a/g/u;->a(FFFLcom/acmeaom/android/a/a/a/b;)V

    .line 723
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    .line 724
    iget v2, p0, Lcom/acmeaom/android/c/d/e;->y:F

    neg-float v2, v2

    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->l:F

    .line 725
    invoke-static {v0, v1}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 726
    const/high16 v1, 0x3f800000

    invoke-static {v0, p1, v1, v4, v4}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;FFFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 727
    invoke-static {p2, v0}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/a/a/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    .line 216
    iput p1, v0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 217
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->b:F

    .line 218
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->c:F

    .line 219
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->d:F

    .line 220
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->e:F

    .line 221
    iput p1, v0, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 222
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->g:F

    .line 223
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->h:F

    .line 224
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->i:F

    .line 225
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->j:F

    .line 226
    iput p1, v0, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 227
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->l:F

    .line 228
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->d:F

    neg-float v1, v1

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 229
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    neg-float v1, v1

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 230
    iput v2, v0, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 231
    const/high16 v1, 0x3f800000

    iput v1, v0, Lcom/acmeaom/android/a/a/a/b;->p:F

    .line 232
    return-object v0
.end method

.method private c(Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 733
    const-string v0, "method must be called with transform lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    :cond_0
    invoke-static {p1}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 737
    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    return v0
.end method

.method private d(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f000000

    .line 807
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 809
    const-string v0, "method must be called with transform lock"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->m()Lcom/acmeaom/android/a/a/c/m;

    move-result-object v0

    .line 813
    new-instance v1, Lcom/acmeaom/android/a/g/m;

    iget-object v2, v0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v3, v0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v0, v0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    .line 817
    invoke-static {v1}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    .line 818
    invoke-static {v0, p1}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    .line 819
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/c;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 820
    const-string v0, "aborting gesture because new screen center is infinite"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    sget-object v0, Lcom/acmeaom/android/a/g/m;->b:Lcom/acmeaom/android/a/g/m;

    .line 824
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 828
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 830
    const-string v0, "method must be called with transform lock"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    :cond_0
    invoke-static {p1}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 834
    new-instance v1, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v1, v2, v2}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    .line 837
    invoke-static {v1}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/c;

    move-result-object v1

    .line 838
    invoke-static {v1, v0}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/c;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    .line 839
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/c;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 840
    const-string v0, "aborting gesture because new screen center is infinite"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    sget-object v0, Lcom/acmeaom/android/a/g/m;->b:Lcom/acmeaom/android/a/g/m;

    .line 844
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/c;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    return-object v0
.end method

.method public B()F
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Lcom/acmeaom/android/c/d/e;->D:F

    return v0
.end method

.method public C()F
    .locals 1

    .prologue
    .line 1195
    iget v0, p0, Lcom/acmeaom/android/c/d/e;->E:F

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->k()Z

    move-result v0

    return v0
.end method

.method public E()Lcom/acmeaom/android/a/a/b/n;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;)V
    .locals 4

    .prologue
    .line 986
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 987
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/a/a/b;)Z

    .line 988
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->t:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 992
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/d/b;)V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 910
    invoke-static {p1}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 912
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/g/m;)V

    .line 913
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/d/e;)V
    .locals 2

    .prologue
    .line 614
    iput-object p1, p0, Lcom/acmeaom/android/c/d/e;->F:Lcom/acmeaom/android/a/d/e;

    .line 615
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->m:Lcom/acmeaom/android/a/c/g;

    new-instance v1, Lcom/acmeaom/android/c/d/h;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/c/d/h;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/d/e;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/g;Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/a;)V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/c/a;)V

    .line 945
    return-void
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/g/b;->a(Ljava/lang/Iterable;)V

    .line 950
    return-void
.end method

.method public a(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 270
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 272
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 916
    iput-boolean p1, p0, Lcom/acmeaom/android/c/d/e;->B:Z

    .line 917
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->u()F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/d/e;->u:F

    .line 918
    return-void
.end method

.method public b(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;
    .locals 2

    .prologue
    .line 1207
    invoke-static {p1}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 1208
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 1209
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->o:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 599
    iput p1, p0, Lcom/acmeaom/android/c/d/e;->D:F

    .line 600
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/d/e;->d(F)F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/d/e;->v:F

    .line 601
    return-void
.end method

.method public b(Lcom/acmeaom/android/a/g/m;)V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 870
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->H()V

    .line 872
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/d/e;->d(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 874
    iget-boolean v1, p0, Lcom/acmeaom/android/c/d/e;->A:Z

    if-eqz v1, :cond_0

    .line 875
    iget-object p1, p0, Lcom/acmeaom/android/c/d/e;->j:Lcom/acmeaom/android/a/g/m;

    .line 881
    :cond_0
    iget v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->d:F

    sub-float/2addr v1, v2

    iget v0, v0, Lcom/acmeaom/android/a/g/m;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->e:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/acmeaom/android/a/g/u;->b(FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    .line 888
    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/a/a/b;)Z

    .line 890
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 891
    return-void
.end method

.method public b(Lcom/acmeaom/android/c/a;)V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/g/b;->b(Lcom/acmeaom/android/c/a;)V

    .line 954
    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/g/b;->b(Ljava/lang/Iterable;)V

    .line 958
    return-void
.end method

.method public b(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
    .locals 23

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 281
    sget-object v2, Lcom/acmeaom/android/a/g/m;->c:Lcom/acmeaom/android/a/g/m;

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v4}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move-object v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acmeaom/android/a/i/o;

    .line 287
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/i/o;->a(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    .line 292
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v2, v6}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 293
    invoke-static {v2}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 294
    invoke-static {v3, v2}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 295
    add-int/lit8 v3, v4, 0x1

    :goto_2
    move v4, v3

    move-object v3, v2

    .line 297
    goto :goto_0

    .line 290
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/i/o;->b(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    goto :goto_1

    .line 299
    :cond_1
    sget-boolean v2, Lcom/acmeaom/android/c/d/e;->h:Z

    if-nez v2, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v2, v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 301
    :cond_2
    if-nez v4, :cond_3

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touches moved but none were valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 463
    :goto_3
    return-void

    .line 307
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/acmeaom/android/c/d/e;->A:Z

    if-eqz v2, :cond_5

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acmeaom/android/c/d/e;->j:Lcom/acmeaom/android/a/g/m;

    invoke-static {v3, v2}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 310
    const/high16 v5, 0x3f800000

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/g/m;

    move-result-object v5

    .line 311
    const/high16 v2, 0x3f800000

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 312
    const/4 v3, 0x1

    move-object v4, v5

    move-object/from16 v22, v2

    move v2, v3

    move-object/from16 v3, v22

    .line 319
    :goto_4
    sget-object v8, Lcom/acmeaom/android/a/g/m;->c:Lcom/acmeaom/android/a/g/m;

    .line 320
    const/4 v7, 0x0

    .line 321
    const/4 v6, 0x0

    .line 322
    const/4 v5, 0x0

    .line 323
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v9, v2

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acmeaom/android/a/i/o;

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/i/o;->b(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v12

    .line 329
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/i/o;->a(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v13

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v12, v2}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v10

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v13, v2}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v14

    .line 333
    invoke-static {v10}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v14}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 334
    :cond_4
    const-string v2, "point is not finite: now == %@, then == %"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v14, v10, v12

    invoke-static {v2, v10}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 314
    :cond_5
    const/high16 v2, 0x3f800000

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 316
    const/4 v3, 0x0

    move-object v4, v2

    move-object/from16 v22, v2

    move v2, v3

    move-object/from16 v3, v22

    goto :goto_4

    .line 338
    :cond_6
    invoke-static {v14, v3}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 339
    invoke-static {v2, v2}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F

    move-result v15

    .line 341
    invoke-static {v10, v14}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v16

    .line 342
    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F

    move-result v2

    .line 343
    div-float/2addr v2, v15

    .line 344
    invoke-static {v2}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 346
    mul-float v15, v6, v2

    add-float/2addr v6, v15

    add-float/2addr v6, v2

    .line 349
    :cond_7
    invoke-static {v14, v4}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v15

    .line 350
    invoke-static {v15, v15}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F

    move-result v17

    .line 351
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/acmeaom/android/c/d/e;->A:Z

    if-eqz v2, :cond_9

    .line 356
    invoke-static {v13}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/a/c/l;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 357
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v4, v10}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v10

    .line 358
    invoke-static {v2, v10}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v10

    .line 359
    invoke-static {v10, v10}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F

    move-result v16

    .line 360
    new-instance v18, Lcom/acmeaom/android/a/g/m;

    iget v0, v13, Lcom/acmeaom/android/a/a/c/l;->a:F

    move/from16 v19, v0

    iget v0, v12, Lcom/acmeaom/android/a/a/c/l;->b:F

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    .line 361
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 362
    invoke-static {v10, v2}, Lcom/acmeaom/android/c/d/a;->d(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F

    move-result v2

    .line 363
    iget v10, v10, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v10, v18, v20

    if-gez v10, :cond_8

    .line 364
    neg-float v2, v2

    .line 366
    :cond_8
    div-float v2, v2, v16

    .line 368
    new-instance v10, Lcom/acmeaom/android/a/a/c/l;

    iget v12, v12, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v13, v13, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-direct {v10, v12, v13}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v10, v12}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v10

    .line 379
    :goto_6
    invoke-static {v10}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 380
    invoke-static {v10, v14}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v10

    .line 381
    invoke-static {v15, v10}, Lcom/acmeaom/android/c/d/a;->d(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F

    move-result v10

    .line 382
    div-float v10, v10, v17

    .line 389
    :goto_7
    invoke-static {v2}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v10}, Lcom/acmeaom/android/c/d/a;->c(F)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 390
    add-float/2addr v5, v2

    .line 391
    add-float/2addr v7, v10

    .line 393
    add-int/lit8 v9, v9, 0x1

    move v2, v5

    move v5, v7

    move v7, v9

    :goto_8
    move v9, v7

    move v7, v5

    move v5, v2

    .line 397
    goto/16 :goto_5

    .line 371
    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 372
    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v8

    .line 375
    :cond_a
    const/4 v2, 0x0

    .line 376
    goto :goto_6

    .line 386
    :cond_b
    const/high16 v10, 0x7fc00000

    goto :goto_7

    .line 399
    :cond_c
    const/4 v2, 0x1

    if-le v9, v2, :cond_d

    .line 402
    const/high16 v2, 0x3f800000

    int-to-float v3, v9

    div-float/2addr v2, v3

    .line 403
    mul-float/2addr v7, v2

    .line 405
    invoke-static {v8, v2}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/g/m;

    move-result-object v8

    .line 408
    :cond_d
    iget v2, v4, Lcom/acmeaom/android/a/g/m;->d:F

    iget v3, v4, Lcom/acmeaom/android/a/g/m;->e:F

    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Lcom/acmeaom/android/a/g/u;->b(FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v2

    .line 409
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/acmeaom/android/c/d/e;->B:Z

    if-nez v3, :cond_13

    .line 411
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000

    invoke-static {v2, v7, v3, v9, v10}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;FFFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v2

    move-object v3, v2

    .line 418
    :goto_9
    const/high16 v2, 0x3f800000

    add-float/2addr v2, v6

    .line 422
    float-to-double v6, v2

    const-wide v9, 0x3fe6666666666666L

    cmpg-double v6, v6, v9

    if-gez v6, :cond_e

    .line 423
    const v2, 0x3f333333

    .line 425
    :cond_e
    const v6, 0x3fa66666

    cmpl-float v6, v2, v6

    if-lez v6, :cond_f

    .line 426
    const v2, 0x3fa66666

    .line 429
    :cond_f
    invoke-static {v3, v2, v2, v2}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v3

    .line 435
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/acmeaom/android/c/d/e;->A:Z

    if-eqz v2, :cond_12

    .line 440
    move-object/from16 v0, p0

    iget v2, v0, Lcom/acmeaom/android/c/d/e;->x:F

    sub-float/2addr v2, v5

    .line 441
    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_11

    .line 442
    const/4 v2, 0x0

    .line 446
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v3

    .line 447
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/acmeaom/android/c/d/e;->e(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v4

    .line 448
    iget v5, v4, Lcom/acmeaom/android/a/g/m;->d:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/acmeaom/android/c/d/e;->j:Lcom/acmeaom/android/a/g/m;

    iget v6, v6, Lcom/acmeaom/android/a/g/m;->d:F

    sub-float/2addr v5, v6

    iget v4, v4, Lcom/acmeaom/android/a/g/m;->e:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/acmeaom/android/c/d/e;->j:Lcom/acmeaom/android/a/g/m;

    iget v6, v6, Lcom/acmeaom/android/a/g/m;->e:F

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v3

    .line 454
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/acmeaom/android/c/d/e;->a(FLcom/acmeaom/android/a/a/a/b;)Z

    .line 462
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/n;->b()V

    goto/16 :goto_3

    .line 443
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/acmeaom/android/c/d/e;->C:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_10

    .line 444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/acmeaom/android/c/d/e;->C:F

    goto :goto_a

    .line 456
    :cond_12
    invoke-static {v8, v4}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v2

    .line 457
    iget v4, v2, Lcom/acmeaom/android/a/g/m;->d:F

    const v5, 0x4b98dfc2

    invoke-static {v4, v5}, Lcom/acmeaom/android/c/d/a;->b(FF)F

    move-result v4

    iput v4, v2, Lcom/acmeaom/android/a/g/m;->d:F

    .line 458
    iget v4, v2, Lcom/acmeaom/android/a/g/m;->d:F

    iget v2, v2, Lcom/acmeaom/android/a/g/m;->e:F

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;FFF)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v2

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v2

    .line 460
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/a/a/b;)Z

    goto :goto_b

    :cond_13
    move-object v3, v2

    goto/16 :goto_9

    :cond_14
    move v2, v5

    move v5, v7

    move v7, v9

    goto/16 :goto_8

    :cond_15
    move-object v2, v3

    move v3, v4

    goto/16 :goto_2
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->k()Z

    move-result v0

    .line 922
    if-eq v0, p1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/g/b;->a(Z)V

    .line 924
    if-eqz p1, :cond_1

    .line 925
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->I()V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->b_()V

    .line 1171
    invoke-super {p0}, Lcom/acmeaom/android/a/i/a;->b_()V

    .line 1172
    return-void
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 604
    iput p1, p0, Lcom/acmeaom/android/c/d/e;->E:F

    .line 605
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/d/e;->d(F)F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/d/e;->w:F

    .line 606
    return-void
.end method

.method public c(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 467
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 468
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->f()V

    .line 474
    :cond_0
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(F)F
    .locals 2

    .prologue
    .line 609
    .line 610
    invoke-static {p1}, Lcom/acmeaom/android/c/d/a;->h(F)F

    move-result v0

    const/high16 v1, 0x43800000

    mul-float/2addr v0, v1

    const v1, 0x4b98dfc2

    div-float/2addr v0, v1

    return v0
.end method

.method public d(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 479
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 480
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 481
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 995
    invoke-super {p0}, Lcom/acmeaom/android/a/i/a;->e()V

    .line 996
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->g()V

    .line 997
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->I()V

    .line 998
    return-void
.end method

.method public e(F)V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 856
    iput p1, p0, Lcom/acmeaom/android/c/d/e;->y:F

    .line 857
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    .line 858
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 859
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 1150
    const/4 v0, 0x0

    .line 1151
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    invoke-direct {p0}, Lcom/acmeaom/android/c/d/e;->K()Z

    move-result v0

    .line 1154
    :cond_0
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 1156
    if-eqz v0, :cond_1

    .line 1157
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x3f91111120000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 1161
    :goto_0
    return-void

    .line 1159
    :cond_1
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    goto :goto_0
.end method

.method public k()Lcom/acmeaom/android/c/g/b;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    return-object v0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 1164
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 1165
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->m()V

    .line 1166
    invoke-super {p0}, Lcom/acmeaom/android/a/i/a;->q()V

    .line 1167
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->a()V

    .line 204
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->m:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/g;)V

    .line 205
    return-void
.end method

.method public u()F
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 565
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 568
    return v0
.end method

.method public v()Lcom/acmeaom/android/a/g/m;
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 863
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/d/e;->d(Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 865
    return-object v0
.end method

.method public w()Lcom/acmeaom/android/a/a/d/b;
    .locals 1

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/e;->v()Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/acmeaom/android/a/a/a/b;
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 980
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    .line 981
    iget-object v1, p0, Lcom/acmeaom/android/c/d/e;->n:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 982
    return-object v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->k:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 1176
    return-void
.end method

.method public z()Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->p:Lcom/acmeaom/android/a/a/a/b;

    return-object v0
.end method
