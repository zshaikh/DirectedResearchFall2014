.class public Lam/sunrise/android/calendar/ui/b/b;
.super Lam/sunrise/android/calendar/ui/b/d;
.source "SRChoiceListDialog.java"


# instance fields
.field private a:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/d;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 30
    const v0, 0x7f030046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 31
    const v0, 0x7f0b0094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/b;->a:Landroid/widget/ListView;

    .line 32
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/b;->a:Landroid/widget/ListView;

    new-instance v2, Lam/sunrise/android/calendar/ui/b/c;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/b/c;-><init>(Lam/sunrise/android/calendar/ui/b/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    return-object v1
.end method

.method public a(Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/b;->dismiss()V

    .line 55
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/b;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    return-void
.end method
