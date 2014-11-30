.class public Lam/sunrise/android/calendar/ui/b/l;
.super Lam/sunrise/android/calendar/ui/b/d;
.source "SRMessageDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/d;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 29
    const v0, 0x7f030047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 30
    const v0, 0x7f0b0095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/l;->a:Landroid/widget/TextView;

    .line 31
    return-object v1
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    return-void
.end method
