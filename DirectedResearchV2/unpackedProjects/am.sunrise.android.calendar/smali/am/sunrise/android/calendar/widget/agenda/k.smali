.class Lam/sunrise/android/calendar/widget/agenda/k;
.super Ljava/lang/Object;
.source "OccurrencesProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lam/sunrise/android/calendar/widget/agenda/i;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/widget/agenda/i;I)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lam/sunrise/android/calendar/widget/agenda/k;->b:Lam/sunrise/android/calendar/widget/agenda/i;

    iput p2, p0, Lam/sunrise/android/calendar/widget/agenda/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/k;->b:Lam/sunrise/android/calendar/widget/agenda/i;

    iget-object v0, v0, Lam/sunrise/android/calendar/widget/agenda/i;->b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    invoke-static {v0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)Lam/sunrise/android/calendar/widget/agenda/f;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/widget/agenda/k;->a:I

    invoke-static {}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/k;->b:Lam/sunrise/android/calendar/widget/agenda/i;

    iget-object v0, v0, Lam/sunrise/android/calendar/widget/agenda/i;->b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    invoke-static {v0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->b(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/k;->b:Lam/sunrise/android/calendar/widget/agenda/i;

    iget-object v0, v0, Lam/sunrise/android/calendar/widget/agenda/i;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 256
    return-void
.end method
