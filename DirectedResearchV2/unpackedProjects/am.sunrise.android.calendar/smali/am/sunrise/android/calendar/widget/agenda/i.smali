.class Lam/sunrise/android/calendar/widget/agenda/i;
.super Ljava/lang/Object;
.source "OccurrencesProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lam/sunrise/android/calendar/widget/agenda/i;->b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    iput-object p2, p0, Lam/sunrise/android/calendar/widget/agenda/i;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/i;->b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    invoke-static {v0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)Lam/sunrise/android/calendar/widget/agenda/f;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/i;->b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    invoke-static {v0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->c(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/widget/agenda/j;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/widget/agenda/j;-><init>(Lam/sunrise/android/calendar/widget/agenda/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 248
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/i;->b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    invoke-static {v1}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->c(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lam/sunrise/android/calendar/widget/agenda/k;

    invoke-direct {v2, p0, v0}, Lam/sunrise/android/calendar/widget/agenda/k;-><init>(Lam/sunrise/android/calendar/widget/agenda/i;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
