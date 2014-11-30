.class Lcom/acmeaom/android/myradar/a/b/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/a/b/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/a/b/a;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/acmeaom/android/myradar/a/b/b;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/b;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->g(Lcom/acmeaom/android/myradar/a/b/a;)V

    .line 172
    return-void
.end method
