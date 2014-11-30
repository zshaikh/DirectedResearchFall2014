.class Lam/sunrise/android/calendar/ui/settings/a/l;
.super Ljava/lang/Object;
.source "SettingsNotificationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/a/k;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/a/k;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/a/l;->a:Lam/sunrise/android/calendar/ui/settings/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 328
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/o;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->toggle()V

    .line 331
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/l;->a:Lam/sunrise/android/calendar/ui/settings/a/k;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/k;->a(Lam/sunrise/android/calendar/ui/settings/a/k;)Lam/sunrise/android/calendar/ui/settings/a/n;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/l;->a:Lam/sunrise/android/calendar/ui/settings/a/k;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/k;->a(Lam/sunrise/android/calendar/ui/settings/a/k;)Lam/sunrise/android/calendar/ui/settings/a/n;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->a:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->d:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/o;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lam/sunrise/android/calendar/ui/settings/a/n;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 336
    :cond_0
    return-void
.end method
