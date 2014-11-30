.class public Lam/sunrise/android/calendar/ui/b/i;
.super Lam/sunrise/android/calendar/ui/b/d;
.source "SRInputDialog.java"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/d;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/b/i;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 32
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    const v0, 0x7f0b0093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    new-instance v2, Lam/sunrise/android/calendar/ui/b/j;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/b/j;-><init>(Lam/sunrise/android/calendar/ui/b/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 47
    return-object v1
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/d;->onResume()V

    .line 54
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 55
    return-void
.end method
