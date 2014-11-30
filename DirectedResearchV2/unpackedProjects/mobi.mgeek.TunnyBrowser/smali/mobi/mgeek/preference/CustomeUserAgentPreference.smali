.class public Lmobi/mgeek/preference/CustomeUserAgentPreference;
.super Ldolphin/preference/EditTextPreference;
.source "CustomeUserAgentPreference.java"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010007

    invoke-direct {p0, p1, p2, v0}, Lmobi/mgeek/preference/CustomeUserAgentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object p1, p0, Lmobi/mgeek/preference/CustomeUserAgentPreference;->b:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lmobi/mgeek/preference/CustomeUserAgentPreference;->a:Landroid/widget/EditText;

    new-instance v1, Lmobi/mgeek/preference/a;

    invoke-direct {v1, p0}, Lmobi/mgeek/preference/a;-><init>(Lmobi/mgeek/preference/CustomeUserAgentPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/preference/CustomeUserAgentPreference;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->c()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a018a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/preference/CustomeUserAgentPreference;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private c()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog;->getButtonTextView(I)Landroid/widget/TextView;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Ldolphin/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/preference/CustomeUserAgentPreference;->b:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;I)V

    .line 80
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->c()Landroid/widget/TextView;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmobi/mgeek/preference/CustomeUserAgentPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 65
    invoke-direct {p0, v0}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->a(Landroid/widget/TextView;)V

    .line 67
    :cond_0
    return-void
.end method
