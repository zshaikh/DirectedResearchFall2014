.class Lam/sunrise/android/calendar/ui/mainview/b;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/a;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/a;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/b;->a:Lam/sunrise/android/calendar/ui/mainview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/b;->a:Lam/sunrise/android/calendar/ui/mainview/a;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->b(Lam/sunrise/android/calendar/ui/mainview/MainView;)V

    .line 136
    return-void
.end method
