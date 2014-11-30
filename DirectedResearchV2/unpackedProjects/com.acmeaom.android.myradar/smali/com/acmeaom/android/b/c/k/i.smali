.class Lcom/acmeaom/android/b/c/k/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/k/h;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/k/h;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/i;->a:Lcom/acmeaom/android/b/c/k/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/i;->a:Lcom/acmeaom/android/b/c/k/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/h;->r()V

    .line 59
    return-void
.end method
