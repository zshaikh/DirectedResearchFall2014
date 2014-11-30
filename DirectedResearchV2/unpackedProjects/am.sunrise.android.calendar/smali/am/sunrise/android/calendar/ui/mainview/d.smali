.class Lam/sunrise/android/calendar/ui/mainview/d;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field final synthetic b:Lam/sunrise/android/calendar/ui/mainview/MainView;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/mainview/MainView;I)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p2, p0, Lam/sunrise/android/calendar/ui/mainview/d;->a:I

    .line 300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;Lam/sunrise/android/calendar/ui/mainview/d;)Lam/sunrise/android/calendar/ui/mainview/d;

    .line 306
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->c(Lam/sunrise/android/calendar/ui/mainview/MainView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 308
    :goto_0
    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/d;->a:I

    packed-switch v1, :pswitch_data_0

    .line 329
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/d;->a:I

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;I)I

    .line 330
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    goto :goto_1

    .line 314
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    goto :goto_1

    .line 318
    :pswitch_2
    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    goto :goto_1

    .line 321
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/d;->b:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    goto :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
