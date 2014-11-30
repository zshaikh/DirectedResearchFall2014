.class public Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;
.super Landroid/preference/Preference;
.source "ProGuard"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/SeekBar;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a:Ljava/lang/String;

    .line 29
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    .line 30
    iput v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    .line 31
    iput v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->d:F

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->g:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a:Ljava/lang/String;

    .line 29
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    .line 30
    iput v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    .line 31
    iput v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->d:F

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->g:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private a(F)I
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    sub-float/2addr v0, v1

    .line 145
    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    sub-float v1, p1, v1

    div-float v0, v1, v0

    const/high16 v1, 0x447a0000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-object p4

    :cond_0
    move-object p4, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    .line 53
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 54
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 56
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->setWidgetLayoutResource(I)V

    .line 57
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    const-string v0, "http://robobunny.com"

    const-string v1, "max"

    const/high16 v2, 0x3f800000

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    .line 61
    const-string v0, "http://robobunny.com"

    const-string v1, "min"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    .line 62
    const-string v0, "http://robobunny.com"

    const-string v1, "interval"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->d:F

    .line 64
    const-string v0, "http://robobunny.com"

    const-string v1, "unitsLeft"

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->f:Ljava/lang/String;

    .line 65
    const-string v0, "http://robobunny.com"

    const-string v1, "units"

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "http://robobunny.com"

    const-string v2, "unitsRight"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->g:Ljava/lang/String;

    .line 67
    const-string v0, "http://robobunny.com"

    const-string v1, "displayFormat"

    const-string v2, "%.2f"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->j:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private b(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->j:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->g:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    return-object v0
.end method

.method private c(F)F
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    sub-float/2addr v0, v1

    .line 180
    const/high16 v1, 0x447a0000

    div-float v1, p1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 126
    const v0, 0x7f080049

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->i:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f080048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->e:F

    invoke-direct {p0, v1}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->i:Landroid/widget/TextView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 134
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->e:F

    invoke-direct {p0, v1}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 136
    const v0, 0x7f08004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 97
    const v0, 0x7f08004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    if-eq v1, v0, :cond_1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 118
    :cond_2
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(Landroid/view/View;)V

    .line 119
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 85
    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    return-object v1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 238
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 241
    :cond_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    const/high16 v0, 0x3f000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 149
    int-to-float v0, p2

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c(F)F

    move-result v0

    .line 151
    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 152
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    .line 158
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->e:F

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 167
    :goto_1
    return-void

    .line 153
    :cond_1
    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 154
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    goto :goto_0

    .line 164
    :cond_2
    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->e:F

    .line 165
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->persistFloat(F)Z

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 196
    :try_start_0
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->e:F

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->getPersistedFloat(F)F

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->e:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 203
    :cond_0
    iget v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    iget v1, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->b:F

    iget v2, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->c:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 205
    :try_start_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 212
    :goto_1
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->persistFloat(F)Z

    .line 213
    iput v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->e:F

    goto :goto_0

    .line 208
    :catch_1
    move-exception v1

    goto :goto_1

    .line 206
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->notifyChanged()V

    .line 187
    return-void
.end method

.method protected persistFloat(F)Z
    .locals 2

    .prologue
    .line 218
    :try_start_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->persistFloat(F)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    invoke-super {p0, p1}, Landroid/preference/Preference;->persistFloat(F)Z

    move-result v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/prefs/SeekBarPreference;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 232
    return-void
.end method
