.class public Lcom/acmeaom/android/a/a/b/aa;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    .line 24
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(F)Lcom/acmeaom/android/a/a/b/aa;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Ljava/lang/Float;)V

    return-object v0
.end method

.method public static a(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
