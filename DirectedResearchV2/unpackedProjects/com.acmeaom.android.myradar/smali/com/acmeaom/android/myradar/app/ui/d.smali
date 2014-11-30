.class Lcom/acmeaom/android/myradar/app/ui/d;
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
    .line 69
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/d;->a:Lcom/acmeaom/android/myradar/app/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/d;->a:Lcom/acmeaom/android/myradar/app/ui/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/c;->c()V

    .line 72
    return-void
.end method
