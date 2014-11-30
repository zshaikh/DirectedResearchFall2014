.class public Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;
.super Landroid/preference/Preference;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/widget/CompoundButton;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a:I

    .line 62
    invoke-direct {p0, p1, v1, v1}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a:I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a:I

    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;)V

    .line 53
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->setWidgetLayoutResource(I)V

    .line 68
    sget-object v0, Lcom/acmeaom/android/myradar/b;->CompatCompoundSwitchPreference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a:I

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->i:Z

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 139
    iget-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->c:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->e:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->c:Z

    .line 133
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->b()V

    .line 136
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->h:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 101
    const v0, 0x7f080012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->e:Landroid/widget/CompoundButton;

    .line 102
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->f:Landroid/view/View;

    .line 103
    const v0, 0x7f080014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->g:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->e:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->e:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f080013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->d:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->b()V

    .line 112
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p2, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->b:Z

    .line 116
    invoke-virtual {p0, p2}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->persistBoolean(Z)Z

    .line 117
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 122
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "subsettings"

    iget v2, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->i:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/ui/f;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p2, :cond_1

    move v0, v1

    .line 84
    :goto_0
    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->getPersistedBoolean(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->b:Z

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->e:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->e:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 92
    :cond_0
    return-void

    .line 82
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_2
    iput-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->b:Z

    .line 88
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->persistBoolean(Z)Z

    goto :goto_1
.end method
