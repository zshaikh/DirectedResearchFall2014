.class Lam/sunrise/android/calendar/ui/event/edit/o;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/o;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/o;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/o;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;)V

    .line 205
    return-void
.end method
