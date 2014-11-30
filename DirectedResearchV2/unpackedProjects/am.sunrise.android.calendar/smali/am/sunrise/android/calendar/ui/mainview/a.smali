.class Lam/sunrise/android/calendar/ui/mainview/a;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/MainView;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/MainView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    new-instance v1, Lam/sunrise/android/calendar/ui/mainview/b;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/mainview/b;-><init>(Lam/sunrise/android/calendar/ui/mainview/a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/mainview/MainView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->b(Lam/sunrise/android/calendar/ui/mainview/MainView;)V

    goto :goto_0
.end method
