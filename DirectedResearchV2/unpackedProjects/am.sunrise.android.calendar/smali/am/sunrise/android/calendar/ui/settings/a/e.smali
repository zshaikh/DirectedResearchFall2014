.class Lam/sunrise/android/calendar/ui/settings/a/e;
.super Ljava/lang/Object;
.source "SettingsDefaultCalendarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/a/d;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/a/d;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/a/e;->a:Lam/sunrise/android/calendar/ui/settings/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 335
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/i;

    .line 336
    if-eqz v0, :cond_1

    .line 337
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->k:Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 340
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/e;->a:Lam/sunrise/android/calendar/ui/settings/a/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/a/d;->notifyDataSetChanged()V

    .line 343
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/e;->a:Lam/sunrise/android/calendar/ui/settings/a/d;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/d;->a(Lam/sunrise/android/calendar/ui/settings/a/d;)Lam/sunrise/android/calendar/ui/settings/a/h;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/e;->a:Lam/sunrise/android/calendar/ui/settings/a/d;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/a/d;->a(Lam/sunrise/android/calendar/ui/settings/a/d;)Lam/sunrise/android/calendar/ui/settings/a/h;

    move-result-object v1

    .line 345
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->f:Ljava/lang/String;

    .line 346
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->d:Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/e;->a:Lam/sunrise/android/calendar/ui/settings/a/d;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/settings/a/d;->b(Lam/sunrise/android/calendar/ui/settings/a/d;)Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lam/sunrise/android/calendar/ui/settings/a/f;

    invoke-direct {v4, p0, v1, v2, v0}, Lam/sunrise/android/calendar/ui/settings/a/f;-><init>(Lam/sunrise/android/calendar/ui/settings/a/e;Lam/sunrise/android/calendar/ui/settings/a/h;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v4, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    :cond_1
    return-void
.end method
