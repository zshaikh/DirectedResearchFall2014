.class public Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "ObservableCheckedTextView.java"


# instance fields
.field private a:Z

.field private b:Lam/sunrise/android/calendar/ui/widgets/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 42
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->a:Z

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->a:Z

    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->b:Lam/sunrise/android/calendar/ui/widgets/af;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->b:Lam/sunrise/android/calendar/ui/widgets/af;

    invoke-interface {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/af;->a(Landroid/widget/CheckedTextView;Z)V

    .line 50
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->a:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lam/sunrise/android/calendar/ui/widgets/af;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->b:Lam/sunrise/android/calendar/ui/widgets/af;

    .line 36
    return-void
.end method
