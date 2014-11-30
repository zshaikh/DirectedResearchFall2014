.class public Lcom/acmeaom/android/c/i/b;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/acmeaom/android/c/i/b;->a:Ljava/lang/Class;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/acmeaom/android/c/i/b;->b:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/acmeaom/android/c/i/b;->a:Ljava/lang/Class;

    .line 17
    iput p2, p0, Lcom/acmeaom/android/c/i/b;->b:I

    .line 18
    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 22
    :try_start_0
    iget v0, p0, Lcom/acmeaom/android/c/i/b;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/acmeaom/android/c/i/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/c/i/b;->b:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/i/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 29
    :catch_1
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
