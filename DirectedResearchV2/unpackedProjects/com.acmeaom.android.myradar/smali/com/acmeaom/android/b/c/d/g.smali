.class Lcom/acmeaom/android/b/c/d/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/d/e;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/d/e;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/acmeaom/android/b/c/d/g;->a:Lcom/acmeaom/android/b/c/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/acmeaom/android/b/c/d/g;->a:Lcom/acmeaom/android/b/c/d/e;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/d/e;->a(Lcom/acmeaom/android/b/c/d/e;)V

    .line 45
    return-void
.end method
