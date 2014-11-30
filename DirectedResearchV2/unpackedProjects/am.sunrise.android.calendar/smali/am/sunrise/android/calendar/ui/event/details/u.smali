.class public Lam/sunrise/android/calendar/ui/event/details/u;
.super Lam/sunrise/android/calendar/ui/c;
.source "EventDetailsDescriptionFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const-string v0, "saved_event_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/u;->a:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/u;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extras.EVENT_DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/u;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f03005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "saved_event_description"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f0b00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/u;->b:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/u;->b:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setTextWithAutoLinking(Ljava/lang/String;)V

    .line 58
    return-void
.end method
