.class public Lam/sunrise/android/calendar/authenticator/ui/email/ConnectEmailFragment;
.super Lam/sunrise/android/calendar/authenticator/ui/email/b;
.source "ConnectEmailFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public b()Lam/sunrise/android/calendar/authenticator/ui/email/c;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->a:Lam/sunrise/android/calendar/authenticator/ui/email/c;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/ConnectEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 39
    const v0, 0x7f0b00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f008d

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0f00b6

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 45
    const v0, 0x7f0a00a6

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 46
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const-string v1, "sans-serif"

    const v5, 0x7f0c00ed

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/16 v1, 0x21

    invoke-interface {v8, v0, v2, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 49
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/ConnectEmailFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
