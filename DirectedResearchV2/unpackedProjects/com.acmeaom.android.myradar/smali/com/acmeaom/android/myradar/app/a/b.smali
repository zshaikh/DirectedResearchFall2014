.class Lcom/acmeaom/android/myradar/app/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/a/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/a/a;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/a/b;->a:Lcom/acmeaom/android/myradar/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a/b;->a:Lcom/acmeaom/android/myradar/app/a/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/a/a;->a()V

    .line 35
    return-void
.end method
