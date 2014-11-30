.class Lmobi/mgeek/TunnyBrowser/gl;
.super Lmobi/mgeek/TunnyBrowser/gg;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private final e:Lcom/mobosquare/sdk/subscription/c;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 803
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 804
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/gg;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 868
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gm;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/gm;-><init>(Lmobi/mgeek/TunnyBrowser/gl;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->e:Lcom/mobosquare/sdk/subscription/c;

    .line 805
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 851
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {v0}, Lcom/mgeek/android/util/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    :try_start_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->a(Landroid/content/Context;)V

    .line 855
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mobosquare/sdk/subscription/a;->a(Landroid/content/Context;)Lcom/mobosquare/sdk/subscription/a;

    move-result-object v1

    .line 857
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gl;->e:Lcom/mobosquare/sdk/subscription/c;

    invoke-virtual {v1, v2}, Lcom/mobosquare/sdk/subscription/a;->a(Lcom/mobosquare/sdk/subscription/c;)V

    .line 858
    const-string v2, "F02250A92D924518"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mobosquare/sdk/subscription/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0647

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 809
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300a4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->b:Landroid/view/View;

    .line 811
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->b:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->c:Landroid/widget/EditText;

    .line 812
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/a;->a(Landroid/content/Context;)Lcom/mobosquare/sdk/subscription/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobosquare/sdk/subscription/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->d:Ljava/lang/String;

    .line 813
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->b:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08026a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 816
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 819
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->b:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 824
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/gg;->b()V

    .line 825
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05b7

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->b(I)V

    .line 826
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->b(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/ge;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0277

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->c(I)V

    .line 827
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 831
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->f()V

    .line 832
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0646

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 844
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gl;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gl;->g()V

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gl;->f()V

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gl;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->finish()V

    .line 848
    return-void
.end method
