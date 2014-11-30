.class public Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final b:[I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->a:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 38
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->b:[I

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 42
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->a:Z

    if-eq v0, p1, :cond_0

    .line 55
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->a:Z

    .line 56
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->refreshDrawableState()V

    .line 58
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->setChecked(Z)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
