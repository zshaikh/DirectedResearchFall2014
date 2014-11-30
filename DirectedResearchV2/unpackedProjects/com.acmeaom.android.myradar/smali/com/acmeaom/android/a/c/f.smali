.class Lcom/acmeaom/android/a/c/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 60
    :cond_0
    iput p1, p0, Lcom/acmeaom/android/a/c/f;->a:I

    .line 61
    iput-object p2, p0, Lcom/acmeaom/android/a/c/f;->b:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Runnable;Lcom/acmeaom/android/a/c/d;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/a/c/f;-><init>(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 65
    instance-of v0, p1, Lcom/acmeaom/android/a/c/f;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    check-cast p1, Lcom/acmeaom/android/a/c/f;

    .line 67
    iget v0, p0, Lcom/acmeaom/android/a/c/f;->a:I

    iget v1, p1, Lcom/acmeaom/android/a/c/f;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/acmeaom/android/a/c/f;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    return-void
.end method
