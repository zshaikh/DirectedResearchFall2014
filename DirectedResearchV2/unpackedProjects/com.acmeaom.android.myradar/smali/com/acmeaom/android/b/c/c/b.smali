.class Lcom/acmeaom/android/b/c/c/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/c/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/c/a;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/acmeaom/android/b/c/c/b;->a:Lcom/acmeaom/android/b/c/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/b;->a:Lcom/acmeaom/android/b/c/c/a;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/c/a;->a(Lcom/acmeaom/android/b/c/c/a;)V

    .line 40
    return-void
.end method
