.class public Lcom/acmeaom/android/a/f/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/u;
.implements Lcom/acmeaom/android/a/g/s;


# static fields
.field private static a:Landroid/location/Location;

.field private static final b:Lcom/acmeaom/android/a/a/b/aj;

.field private static final c:Lcom/acmeaom/android/a/f/b;


# instance fields
.field private d:Z

.field private e:Lcom/acmeaom/android/a/a/d/a;

.field private f:Lcom/acmeaom/android/a/a/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4082c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/a/f/b;->b:Lcom/acmeaom/android/a/a/b/aj;

    .line 96
    new-instance v0, Lcom/acmeaom/android/a/f/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/f/b;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/f/b;->c:Lcom/acmeaom/android/a/f/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/acmeaom/android/a/f/d;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/a/f/d;-><init>(Lcom/acmeaom/android/a/f/b;)V

    const-string v2, "kLocationChanged"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/b;->g()V

    .line 91
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    sget-object v1, Lcom/acmeaom/android/a/f/b;->b:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v1, v1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/j;->b(Lcom/acmeaom/android/a/a/b/aj;)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/f/b;->f:Lcom/acmeaom/android/a/a/b/j;

    .line 93
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/d/b;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/acmeaom/android/a/f/b;->c()Lcom/acmeaom/android/a/a/d/a;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 44
    sput-object p0, Lcom/acmeaom/android/a/f/b;->a:Landroid/location/Location;

    .line 45
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/a/f/c;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/a/f/c;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/a/f/b;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/b;->i()V

    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/a/f/b;Lcom/acmeaom/android/a/f/e;Lcom/acmeaom/android/a/a/b/e;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/a/f/b;->a(Lcom/acmeaom/android/a/f/e;Lcom/acmeaom/android/a/a/b/e;)V

    return-void
.end method

.method private a(Lcom/acmeaom/android/a/f/e;Lcom/acmeaom/android/a/a/b/e;)V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p2}, Lcom/acmeaom/android/a/a/b/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    iput-object v0, p0, Lcom/acmeaom/android/a/f/b;->e:Lcom/acmeaom/android/a/a/d/a;

    .line 122
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/b;->h()V

    .line 123
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Lcom/acmeaom/android/a/a/d/a;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/acmeaom/android/a/f/b;->a:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/a/d/a;

    sget-object v1, Lcom/acmeaom/android/a/f/b;->a:Landroid/location/Location;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/d/a;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public static e()Lcom/acmeaom/android/a/f/b;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/acmeaom/android/a/f/b;->c:Lcom/acmeaom/android/a/f/b;

    return-object v0
.end method

.method private g()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 126
    const-string v0, "kLocationChanged"

    invoke-static {v0, p0}, Lcom/acmeaom/android/a/a/b/r;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/r;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/acmeaom/android/a/a/b/x;->a()Lcom/acmeaom/android/a/a/b/x;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/acmeaom/android/a/a/b/z;->a:Lcom/acmeaom/android/a/a/b/z;

    invoke-virtual {v1, v0, v2}, Lcom/acmeaom/android/a/a/b/x;->a(Lcom/acmeaom/android/a/a/b/r;Lcom/acmeaom/android/a/a/b/z;)V

    .line 130
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 133
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 135
    iget-object v0, p0, Lcom/acmeaom/android/a/f/b;->f:Lcom/acmeaom/android/a/a/b/j;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->c()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v0

    iget-wide v0, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    sget-object v2, Lcom/acmeaom/android/a/f/b;->b:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v2, Lcom/acmeaom/android/a/a/b/aj;->b:D

    neg-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 136
    const-string v0, "updating now"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/acmeaom/android/a/f/b;->f()V

    .line 148
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v0, "delaying update"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    sget-object v1, Lcom/acmeaom/android/a/f/b;->b:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v1, v1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    iget-object v3, p0, Lcom/acmeaom/android/a/f/b;->f:Lcom/acmeaom/android/a/a/b/j;

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/j;->c()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v3

    iget-wide v3, v3, Lcom/acmeaom/android/a/a/b/aj;->b:D

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 142
    iget-wide v1, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 143
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x3fb999999999999aL

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 145
    :cond_1
    invoke-static {p0, v0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/a/f/b;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public b_()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/acmeaom/android/a/f/f;->a()Lcom/acmeaom/android/a/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/f/b;->e:Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/f/f;->a(Lcom/acmeaom/android/a/a/d/a;)V

    .line 115
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/j;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/f/b;->f:Lcom/acmeaom/android/a/a/b/j;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/a/f/b;->d:Z

    .line 117
    return-void
.end method
