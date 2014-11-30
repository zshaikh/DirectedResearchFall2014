.class public abstract Lcom/acmeaom/android/b/c/h/k;
.super Lcom/acmeaom/android/c/c/i;
.source "ProGuard"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private d:Lcom/acmeaom/android/a/a/b/j;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/acmeaom/android/b/c/h/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/b/c/h/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 55
    sget-object v2, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    const/high16 v3, 0x43800000

    const-string v5, "png"

    const/16 v7, 0x14

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/acmeaom/android/c/c/i;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V

    .line 57
    sget-object v0, Lcom/acmeaom/android/a/a/b/ae;->c:Lcom/acmeaom/android/a/a/b/ae;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/h/k;->a(Lcom/acmeaom/android/a/a/b/ae;)V

    .line 58
    iput-object p2, p0, Lcom/acmeaom/android/b/c/h/k;->e:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/acmeaom/android/b/c/h/k;->d:Lcom/acmeaom/android/a/a/b/j;

    .line 60
    invoke-static {p3}, Lcom/acmeaom/android/a/f/z;->a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/h/k;->b:Ljava/lang/String;

    .line 61
    const v0, 0xf4240

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/h/k;->a(I)V

    .line 62
    return-void
.end method

.method public static a(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)Lcom/acmeaom/android/b/c/h/k;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    const-string v1, "^i"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 36
    const-string v1, "^n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 37
    const-string v3, "^x"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 38
    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 40
    :goto_0
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 41
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 50
    :goto_1
    return-object v0

    .line 38
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    :cond_2
    if-nez v1, :cond_3

    .line 44
    new-instance v0, Lcom/acmeaom/android/b/c/h/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/acmeaom/android/b/c/h/a;-><init>(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)V

    goto :goto_1

    .line 45
    :cond_3
    if-nez v2, :cond_4

    .line 46
    new-instance v0, Lcom/acmeaom/android/b/c/h/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/acmeaom/android/b/c/h/b;-><init>(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)V

    goto :goto_1

    .line 49
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/acmeaom/android/c/h/m;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 65
    iget v0, p1, Lcom/acmeaom/android/c/h/m;->b:I

    .line 66
    iget-wide v1, p1, Lcom/acmeaom/android/c/h/m;->c:J

    .line 67
    iget-wide v3, p1, Lcom/acmeaom/android/c/h/m;->d:J

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/acmeaom/android/b/c/h/k;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d/%d/%d.png"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/acmeaom/android/b/c/h/k;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/acmeaom/android/b/c/h/k;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/acmeaom/android/c/c/i;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/acmeaom/android/c/h/b;->b:Lcom/acmeaom/android/c/h/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/h/a;->a(Lcom/acmeaom/android/c/h/b;)V

    .line 75
    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/acmeaom/android/b/c/h/k;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/h/k;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 110
    sget-boolean v0, Lcom/acmeaom/android/b/c/h/k;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    return-void
.end method

.method l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/k;->b:Ljava/lang/String;

    return-object v0
.end method
