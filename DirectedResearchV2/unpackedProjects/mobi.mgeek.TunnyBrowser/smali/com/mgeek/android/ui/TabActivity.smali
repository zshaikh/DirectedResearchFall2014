.class public Lcom/mgeek/android/ui/TabActivity;
.super Landroid/app/ActivityGroup;
.source "TabActivity.java"


# instance fields
.field private a:Lcom/mgeek/android/ui/TabHost;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->b:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/ui/TabActivity;->c:I

    .line 32
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030108

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabActivity;->setContentView(I)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/mgeek/android/ui/TabHost;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabActivity;->b()V

    .line 133
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabHost;->e()Landroid/view/View;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 100
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/TabHost;

    iput-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    .line 102
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabHost;->a(Landroid/app/LocalActivityManager;)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 28
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;)V

    .line 29
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabActivity;->b()V

    .line 77
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabHost;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabHost;->a(I)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabActivity;->b()V

    .line 58
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v1, v0}, Lcom/mgeek/android/ui/TabHost;->b(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabHost;->c()I

    move-result v0

    if-gez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    iget-object v1, p0, Lcom/mgeek/android/ui/TabActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabHost;->b(Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    iget v0, p0, Lcom/mgeek/android/ui/TabActivity;->c:I

    if-ltz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    iget v1, p0, Lcom/mgeek/android/ui/TabActivity;->c:I

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabHost;->a(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/mgeek/android/ui/TabActivity;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabHost;->d()Ljava/lang/String;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
