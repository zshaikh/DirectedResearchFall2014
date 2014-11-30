.class Lam/sunrise/android/calendar/ui/settings/a/r;
.super Ljava/lang/Object;
.source "SettingsVisibleCalendarsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/a/q;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/a/q;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/a/r;->a:Lam/sunrise/android/calendar/ui/settings/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 339
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    .line 340
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->toggle()V

    .line 342
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/r;->a:Lam/sunrise/android/calendar/ui/settings/a/q;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/q;->a(Lam/sunrise/android/calendar/ui/settings/a/q;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->d:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/r;->a:Lam/sunrise/android/calendar/ui/settings/a/q;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/q;->b(Lam/sunrise/android/calendar/ui/settings/a/q;)Lam/sunrise/android/calendar/ui/settings/a/t;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/r;->a:Lam/sunrise/android/calendar/ui/settings/a/q;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/q;->b(Lam/sunrise/android/calendar/ui/settings/a/q;)Lam/sunrise/android/calendar/ui/settings/a/t;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->a:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->d:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lam/sunrise/android/calendar/ui/settings/a/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 348
    :cond_0
    return-void
.end method
