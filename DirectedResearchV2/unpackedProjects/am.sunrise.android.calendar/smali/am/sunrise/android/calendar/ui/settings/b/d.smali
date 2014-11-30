.class public Lam/sunrise/android/calendar/ui/settings/b/d;
.super Lam/sunrise/android/calendar/ui/b/b;
.source "PreferenceChoiceDialog.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/settings/b/e;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/b;-><init>()V

    .line 44
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/b/d;)V
    .locals 1

    .prologue
    .line 35
    const-string v0, "PreferenceChoiceDialog"

    invoke-static {p0, p1, v0}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/b/e;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/settings/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->a:Lam/sunrise/android/calendar/ui/settings/b/e;

    .line 49
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/b/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/b;->a(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->a:Lam/sunrise/android/calendar/ui/settings/b/e;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->a:Lam/sunrise/android/calendar/ui/settings/b/e;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/b/e;->a()[Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    if-ltz v0, :cond_0

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->a:Lam/sunrise/android/calendar/ui/settings/b/e;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/settings/b/e;->a(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->a:Lam/sunrise/android/calendar/ui/settings/b/e;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/e;->a()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 79
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;->dismiss()V

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/d;->a:Lam/sunrise/android/calendar/ui/settings/b/e;

    invoke-virtual {v0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/b/e;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    return-void
.end method
