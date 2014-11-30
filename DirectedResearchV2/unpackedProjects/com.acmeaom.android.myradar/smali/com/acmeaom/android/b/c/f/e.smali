.class Lcom/acmeaom/android/b/c/f/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/f/b;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/f/b;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/acmeaom/android/b/c/f/e;->a:Lcom/acmeaom/android/b/c/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/e;->a:Lcom/acmeaom/android/b/c/f/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/f/b;->k()V

    .line 73
    return-void
.end method
