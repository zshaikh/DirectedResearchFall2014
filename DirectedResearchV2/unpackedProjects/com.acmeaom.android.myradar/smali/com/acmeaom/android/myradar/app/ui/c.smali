.class public abstract Lcom/acmeaom/android/myradar/app/ui/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field protected a:Landroid/app/AlertDialog$Builder;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/Button;

.field protected d:Landroid/app/AlertDialog;

.field protected e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    .line 43
    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->b:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->c:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->d:Landroid/app/AlertDialog;

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->e:Landroid/os/Bundle;

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_0
    if-eqz p3, :cond_1

    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 68
    :cond_1
    if-eqz p4, :cond_2

    .line 69
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/acmeaom/android/myradar/app/ui/d;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/ui/d;-><init>(Lcom/acmeaom/android/myradar/app/ui/c;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    :cond_2
    if-eqz p5, :cond_3

    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/acmeaom/android/myradar/app/ui/e;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/ui/e;-><init>(Lcom/acmeaom/android/myradar/app/ui/c;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    :cond_3
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public e()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->d:Landroid/app/AlertDialog;

    .line 116
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 132
    check-cast p1, Landroid/app/AlertDialog;

    .line 133
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->b:Landroid/widget/Button;

    .line 134
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/c;->c:Landroid/widget/Button;

    .line 135
    return-void
.end method
