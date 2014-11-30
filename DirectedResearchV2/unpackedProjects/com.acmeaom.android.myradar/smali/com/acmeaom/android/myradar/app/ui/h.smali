.class final Lcom/acmeaom/android/myradar/app/ui/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/ui/i;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/ui/i;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/h;->a:Lcom/acmeaom/android/myradar/app/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/h;->a:Lcom/acmeaom/android/myradar/app/ui/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/i;->a()V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
