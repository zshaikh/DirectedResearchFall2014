.class public Lcom/facebook/orca/prefs/LocationServicesPreference;
.super Landroid/preference/DialogPreference;
.source "LocationServicesPreference.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/LocationServicesPreference;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/LocationServicesPreference;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/LocationServicesPreference;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->c:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 40
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 41
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->b:Landroid/view/LayoutInflater;

    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    iget-object v2, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)V

    .line 86
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 87
    invoke-direct {p0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->notifyChanged()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v1

    .line 58
    const v0, 0x7f0a00d2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    const v0, 0x7f08007d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00d3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/orca/prefs/LocationServicesPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00d4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f08007e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    new-instance v1, Lcom/facebook/orca/prefs/LocationServicesPreference$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/LocationServicesPreference$1;-><init>(Lcom/facebook/orca/prefs/LocationServicesPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 76
    return-void
.end method
