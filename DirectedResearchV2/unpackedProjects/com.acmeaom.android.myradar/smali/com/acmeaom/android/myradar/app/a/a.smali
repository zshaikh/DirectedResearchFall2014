.class public abstract Lcom/acmeaom/android/myradar/app/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/acmeaom/android/a/d/f;)V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p2}, Lcom/acmeaom/android/a/d/f;->getBaseLayer()I

    move-result v0

    .line 16
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0051

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/acmeaom/android/a/d/f;->getBaseLayerLabels()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acmeaom/android/myradar/app/a/d;

    invoke-direct {v3, p0, p2}, Lcom/acmeaom/android/myradar/app/a/d;-><init>(Lcom/acmeaom/android/myradar/app/a/a;Lcom/acmeaom/android/a/d/f;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acmeaom/android/myradar/app/a/c;

    invoke-direct {v2, p0}, Lcom/acmeaom/android/myradar/app/a/c;-><init>(Lcom/acmeaom/android/myradar/app/a/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/myradar/app/a/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/a/b;-><init>(Lcom/acmeaom/android/myradar/app/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/a/a;->a:Landroid/app/Dialog;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a/a;->a:Landroid/app/Dialog;

    return-object v0
.end method
