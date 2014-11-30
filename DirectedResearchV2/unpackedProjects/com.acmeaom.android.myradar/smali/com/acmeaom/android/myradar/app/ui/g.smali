.class final Lcom/acmeaom/android/myradar/app/ui/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/ui/i;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/ui/i;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/g;->a:Lcom/acmeaom/android/myradar/app/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/g;->a:Lcom/acmeaom/android/myradar/app/ui/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/i;->a()V

    .line 178
    return-void
.end method
