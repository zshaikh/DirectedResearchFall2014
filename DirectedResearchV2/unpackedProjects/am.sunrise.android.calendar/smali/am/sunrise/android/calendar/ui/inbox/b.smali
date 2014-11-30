.class Lam/sunrise/android/calendar/ui/inbox/b;
.super Ljava/lang/Object;
.source "InboxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/inbox/a;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/inbox/a;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/inbox/b;->a:Lam/sunrise/android/calendar/ui/inbox/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/b;->a:Lam/sunrise/android/calendar/ui/inbox/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/inbox/a;->a(Lam/sunrise/android/calendar/ui/inbox/a;)Lam/sunrise/android/calendar/ui/inbox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/inbox/e;

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/b;->a:Lam/sunrise/android/calendar/ui/inbox/a;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/inbox/a;->a(Lam/sunrise/android/calendar/ui/inbox/a;)Lam/sunrise/android/calendar/ui/inbox/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/inbox/d;->a(Lam/sunrise/android/calendar/ui/inbox/e;)V

    .line 289
    :cond_0
    return-void
.end method
