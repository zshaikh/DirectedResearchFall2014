.class Lcom/acmeaom/android/b/c/h/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/h/c;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/h/c;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/acmeaom/android/b/c/h/f;->a:Lcom/acmeaom/android/b/c/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/f;->a:Lcom/acmeaom/android/b/c/h/c;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/h/c;->a(Lcom/acmeaom/android/b/c/h/c;)V

    .line 78
    return-void
.end method
