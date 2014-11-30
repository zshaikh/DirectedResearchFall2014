.class Lam/sunrise/android/calendar/ui/birthdays/c;
.super Ljava/lang/Object;
.source "BirthdaysAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/birthdays/a;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/birthdays/a;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/birthdays/c;->a:Lam/sunrise/android/calendar/ui/birthdays/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 238
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/birthdays/f;

    .line 239
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/c;->a:Lam/sunrise/android/calendar/ui/birthdays/a;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/birthdays/a;->a(Lam/sunrise/android/calendar/ui/birthdays/a;)Lam/sunrise/android/calendar/ui/birthdays/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/c;->a:Lam/sunrise/android/calendar/ui/birthdays/a;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/birthdays/a;->a(Lam/sunrise/android/calendar/ui/birthdays/a;)Lam/sunrise/android/calendar/ui/birthdays/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/birthdays/e;->b(Lam/sunrise/android/calendar/ui/birthdays/d;)V

    .line 242
    :cond_0
    return-void
.end method
