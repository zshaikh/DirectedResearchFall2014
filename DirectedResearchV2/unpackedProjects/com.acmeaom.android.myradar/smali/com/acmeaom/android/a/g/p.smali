.class public Lcom/acmeaom/android/a/g/p;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic c:Z


# instance fields
.field public final a:Lcom/acmeaom/android/a/g/m;

.field public final b:Lcom/acmeaom/android/a/g/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/acmeaom/android/a/g/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/g/p;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    .line 17
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/acmeaom/android/a/g/m;->c:Lcom/acmeaom/android/a/g/m;

    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/g/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/a/g/m;->c:Lcom/acmeaom/android/a/g/m;

    iget-object v1, p0, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/g/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
