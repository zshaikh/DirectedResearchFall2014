.class Lcom/acmeaom/android/b/c/a/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/a/g;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/a/g;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/acmeaom/android/b/c/a/i;->a:Lcom/acmeaom/android/b/c/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/i;->a:Lcom/acmeaom/android/b/c/a/g;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/g;->r()V

    .line 58
    return-void
.end method