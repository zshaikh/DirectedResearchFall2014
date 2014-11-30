.class abstract Lmobi/mgeek/TunnyBrowser/gh;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/Object;

.field protected e:Ljava/lang/Object;

.field protected final f:Landroid/content/SharedPreferences;

.field protected g:Ljava/lang/CharSequence;

.field protected h:Ljava/lang/CharSequence;

.field protected i:Landroid/view/ViewGroup;

.field final synthetic j:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gh;->j:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/gh;->c:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lmobi/mgeek/TunnyBrowser/gh;->d:Ljava/lang/Object;

    .line 88
    iput-object p4, p0, Lmobi/mgeek/TunnyBrowser/gh;->e:Ljava/lang/Object;

    .line 89
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/gh;->f:Landroid/content/SharedPreferences;

    .line 90
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gh;->a()V

    .line 91
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300e5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    const v0, 0x1020002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->i:Landroid/view/ViewGroup;

    .line 100
    return-object v1
.end method

.method protected abstract a()V
.end method

.method protected abstract a(Landroid/content/SharedPreferences$Editor;)V
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gh;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/gh;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->a:Landroid/view/View;

    .line 114
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gh;->a(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->a:Landroid/view/View;

    return-object v0
.end method

.method public c(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->g:Ljava/lang/CharSequence;

    .line 140
    return-void
.end method

.method public d(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gh;->h:Ljava/lang/CharSequence;

    .line 148
    return-void
.end method
