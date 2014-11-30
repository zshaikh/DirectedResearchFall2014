.class Lcom/acmeaom/android/myradar/app/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/MyRadarApplication;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/MyRadarApplication;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/f;->a:Lcom/acmeaom/android/myradar/app/MyRadarApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/f;->a:Lcom/acmeaom/android/myradar/app/MyRadarApplication;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Lcom/acmeaom/android/myradar/app/MyRadarApplication;)V

    .line 85
    return-void
.end method
