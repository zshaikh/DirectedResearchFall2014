.class Lcom/acmeaom/android/myradar/app/ui/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/ui/c;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/ui/c;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/e;->a:Lcom/acmeaom/android/myradar/app/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/e;->a:Lcom/acmeaom/android/myradar/app/ui/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/c;->d()V

    .line 81
    return-void
.end method
