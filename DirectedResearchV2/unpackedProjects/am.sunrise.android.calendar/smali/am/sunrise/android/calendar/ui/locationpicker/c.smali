.class Lam/sunrise/android/calendar/ui/locationpicker/c;
.super Ljava/lang/Object;
.source "LocationPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/locationpicker/b;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/b;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/c;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/c;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/c;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->a(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->a(Lam/sunrise/android/calendar/ui/locationpicker/b;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/c;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->b(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/c;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/c;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->b(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->b(Lam/sunrise/android/calendar/ui/locationpicker/b;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
