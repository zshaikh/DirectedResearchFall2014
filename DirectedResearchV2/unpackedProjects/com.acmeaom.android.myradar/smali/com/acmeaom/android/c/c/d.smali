.class public abstract Lcom/acmeaom/android/c/c/d;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"


# static fields
.field private static final f:Lcom/acmeaom/android/c/i/b;

.field private static final g:Lcom/acmeaom/android/c/i/b;

.field private static final h:Lcom/acmeaom/android/c/i/b;

.field private static final i:Lcom/acmeaom/android/c/i/b;


# instance fields
.field private final a:I

.field private final b:I

.field private final d:F

.field private final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/c/d;->f:Lcom/acmeaom/android/c/i/b;

    .line 57
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/c/d;->g:Lcom/acmeaom/android/c/i/b;

    .line 87
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/g/p;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/c/d;->h:Lcom/acmeaom/android/c/i/b;

    .line 89
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/g/o;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/c/d;->i:Lcom/acmeaom/android/c/i/b;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FII)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 38
    iput p3, p0, Lcom/acmeaom/android/c/c/d;->d:F

    .line 39
    iput p4, p0, Lcom/acmeaom/android/c/c/d;->a:I

    .line 40
    iput p5, p0, Lcom/acmeaom/android/c/c/d;->b:I

    .line 42
    iget v0, p0, Lcom/acmeaom/android/c/c/d;->d:F

    iget v1, p0, Lcom/acmeaom/android/c/c/d;->d:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/acmeaom/android/c/c/d;->e:F

    .line 43
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/g/d;Ljava/util/HashSet;Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/a/a/a/b;)V
    .locals 6

    .prologue
    .line 98
    sget-object v0, Lcom/acmeaom/android/c/c/d;->h:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/p;

    .line 99
    invoke-virtual {p3, v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/g/p;)V

    .line 100
    invoke-static {p1, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/d;Lcom/acmeaom/android/a/g/p;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/p;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/acmeaom/android/a/g/d;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/acmeaom/android/c/c/d;->i:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/g/o;

    .line 109
    invoke-static {v0, p4, v1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/p;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/g/o;)V

    .line 110
    invoke-static {v1}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/o;)F

    move-result v0

    .line 112
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const/high16 v0, 0x7f800000

    .line 116
    :cond_2
    iget v2, p3, Lcom/acmeaom/android/c/h/m;->b:I

    .line 117
    iget v1, p0, Lcom/acmeaom/android/c/c/d;->b:I

    if-ge v2, v1, :cond_4

    iget v1, p0, Lcom/acmeaom/android/c/c/d;->a:I

    if-lt v2, v1, :cond_3

    iget v1, p0, Lcom/acmeaom/android/c/c/d;->e:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 118
    :cond_3
    invoke-virtual {p3}, Lcom/acmeaom/android/c/h/m;->c()[Lcom/acmeaom/android/c/h/m;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 119
    invoke-direct {p0, p1, p2, v5, p4}, Lcom/acmeaom/android/c/c/d;->a(Lcom/acmeaom/android/a/g/d;Ljava/util/HashSet;Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/a/a/a/b;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_4
    iget v1, p0, Lcom/acmeaom/android/c/c/d;->b:I

    if-eq v2, v1, :cond_5

    iget v1, p0, Lcom/acmeaom/android/c/c/d;->a:I

    if-lt v2, v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/c/c/d;->e:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 123
    :cond_5
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v0, Lcom/acmeaom/android/c/c/d;->f:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/a/b;

    .line 63
    sget-object v1, Lcom/acmeaom/android/c/c/d;->g:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/a/b;

    .line 64
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 66
    iget-object v3, p0, Lcom/acmeaom/android/c/c/d;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v3}, Lcom/acmeaom/android/c/d/e;->E()Lcom/acmeaom/android/a/a/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 67
    iget-object v3, p0, Lcom/acmeaom/android/c/c/d;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v3}, Lcom/acmeaom/android/c/d/e;->A()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 68
    iget-object v3, p0, Lcom/acmeaom/android/c/c/d;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v3}, Lcom/acmeaom/android/c/d/e;->z()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 69
    iget-object v3, p0, Lcom/acmeaom/android/c/c/d;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v3}, Lcom/acmeaom/android/c/d/e;->E()Lcom/acmeaom/android/a/a/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 70
    iget-object v3, p0, Lcom/acmeaom/android/c/c/d;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v3}, Lcom/acmeaom/android/c/d/e;->m()Lcom/acmeaom/android/a/a/c/m;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/a/b;)Lcom/acmeaom/android/a/g/d;

    move-result-object v0

    .line 71
    const v3, 0x4c18dfc2

    invoke-static {v0, v3, v4, v4}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/d;FFF)Lcom/acmeaom/android/a/g/d;

    move-result-object v3

    .line 74
    sget-object v4, Lcom/acmeaom/android/c/h/m;->a:Lcom/acmeaom/android/c/h/m;

    invoke-direct {p0, v0, v2, v4, v1}, Lcom/acmeaom/android/c/c/d;->a(Lcom/acmeaom/android/a/g/d;Ljava/util/HashSet;Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/a/a/a/b;)V

    .line 77
    sget-object v0, Lcom/acmeaom/android/c/h/m;->a:Lcom/acmeaom/android/c/h/m;

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/acmeaom/android/c/c/d;->a(Lcom/acmeaom/android/a/g/d;Ljava/util/HashSet;Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/a/a/a/b;)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/acmeaom/android/c/c/d;->a(Ljava/util/HashSet;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/util/HashSet;)V
.end method

.method public e()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/acmeaom/android/c/c/d;->j()V

    .line 47
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/acmeaom/android/c/c/d;->j()V

    .line 51
    return-void
.end method
