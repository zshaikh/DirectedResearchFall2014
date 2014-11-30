.class public Lam/sunrise/android/calendar/authenticator/ui/googleplus/ConnectGooglePlusFragment;
.super Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;
.source "ConnectGooglePlusFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public b()Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->a:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0b00d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/ConnectGooglePlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/ConnectGooglePlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/ConnectGooglePlusFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    return-void
.end method
