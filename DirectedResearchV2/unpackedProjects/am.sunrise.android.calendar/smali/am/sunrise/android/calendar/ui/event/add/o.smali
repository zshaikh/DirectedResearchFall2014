.class Lam/sunrise/android/calendar/ui/event/add/o;
.super Ljava/lang/Object;
.source "AddEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/o;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/o;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/o;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)V

    .line 212
    return-void
.end method
