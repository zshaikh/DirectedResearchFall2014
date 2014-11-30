.class Lam/sunrise/android/calendar/widget/agenda/j;
.super Ljava/lang/Object;
.source "OccurrencesProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/widget/agenda/i;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/widget/agenda/i;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lam/sunrise/android/calendar/widget/agenda/j;->a:Lam/sunrise/android/calendar/widget/agenda/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/j;->a:Lam/sunrise/android/calendar/widget/agenda/i;

    iget-object v0, v0, Lam/sunrise/android/calendar/widget/agenda/i;->b:Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;

    invoke-static {v0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->b(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)V

    .line 243
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/j;->a:Lam/sunrise/android/calendar/widget/agenda/i;

    iget-object v0, v0, Lam/sunrise/android/calendar/widget/agenda/i;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 244
    return-void
.end method
