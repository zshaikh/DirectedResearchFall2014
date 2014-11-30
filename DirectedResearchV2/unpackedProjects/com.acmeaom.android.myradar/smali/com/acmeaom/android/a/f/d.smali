.class Lcom/acmeaom/android/a/f/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/f/b;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/b;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/acmeaom/android/a/f/d;->a:Lcom/acmeaom/android/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/acmeaom/android/a/f/d;->a:Lcom/acmeaom/android/a/f/b;

    invoke-static {v0}, Lcom/acmeaom/android/a/f/b;->a(Lcom/acmeaom/android/a/f/b;)V

    .line 87
    return-void
.end method
