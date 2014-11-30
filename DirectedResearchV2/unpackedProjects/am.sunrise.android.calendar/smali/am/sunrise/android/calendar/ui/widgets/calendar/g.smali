.class Lam/sunrise/android/calendar/ui/widgets/calendar/g;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/d;I)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->a:I

    .line 629
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;Lam/sunrise/android/calendar/ui/widgets/calendar/g;)Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    .line 634
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->a:I

    packed-switch v0, :pswitch_data_0

    .line 648
    :cond_0
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->a:I

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;I)I

    .line 649
    return-void

    .line 637
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)V

    goto :goto_0

    .line 643
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->c(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)V

    .line 644
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;Z)Z

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
