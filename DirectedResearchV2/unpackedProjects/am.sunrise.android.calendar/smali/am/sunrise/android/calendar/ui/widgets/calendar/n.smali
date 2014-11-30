.class public Lam/sunrise/android/calendar/ui/widgets/calendar/n;
.super Landroid/widget/LinearLayout;
.source "CalendarWeekHeading.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final a:[[I


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a:[[I

    return-void

    :array_0
    .array-data 4
        0x7f0f0160
        0x7f0a0043
    .end array-data

    :array_1
    .array-data 4
        0x7f0f015e
        0x7f0a0042
    .end array-data

    :array_2
    .array-data 4
        0x7f0f0162
        0x7f0a0042
    .end array-data

    :array_3
    .array-data 4
        0x7f0f0163
        0x7f0a0042
    .end array-data

    :array_4
    .array-data 4
        0x7f0f0161
        0x7f0a0042
    .end array-data

    :array_5
    .array-data 4
        0x7f0f015d
        0x7f0a0042
    .end array-data

    :array_6
    .array-data 4
        0x7f0f015f
        0x7f0a0043
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a()V

    .line 51
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    const v0, 0x7f0c0065

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 109
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const v0, 0x7f0a0040

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->setBackgroundColor(I)V

    .line 114
    const v0, 0x7f0c0062

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 116
    const v0, 0x7f0c0064

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 119
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    move v2, v1

    .line 124
    :goto_1
    const/4 v7, 0x7

    if-ge v2, v7, :cond_2

    .line 125
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v8, v9}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    sget-object v8, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a:[[I

    aget-object v8, v8, v0

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 128
    sget-object v8, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a:[[I

    aget-object v8, v8, v0

    aget v8, v8, v10

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    const/16 v8, 0x51

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    int-to-float v8, v6

    invoke-virtual {v7, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 132
    invoke-virtual {v7, v1, v1, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000

    invoke-direct {v8, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v7, v8}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 135
    sget-object v7, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a:[[I

    array-length v7, v7

    if-lt v0, v7, :cond_0

    move v0, v1

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 140
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->b:Landroid/graphics/Paint;

    .line 141
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->b:Landroid/graphics/Paint;

    const v1, 0x7f0a0041

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    const v0, 0x7f0c0063

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->c:I

    .line 144
    return-void
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 148
    add-int/lit8 v0, p1, -0x1

    .line 149
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getChildCount()I

    move-result v5

    move v2, v1

    move v3, v0

    .line 150
    :goto_0
    if-ge v2, v5, :cond_1

    .line 151
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    sget-object v6, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a:[[I

    aget-object v6, v6, v3

    aget v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 153
    sget-object v6, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a:[[I

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    add-int/lit8 v0, v3, 0x1

    .line 155
    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a:[[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 150
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->c:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 99
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    invoke-static {p2}, Lam/sunrise/android/calendar/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->a(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public setEmbedMode(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v1, v2

    .line 65
    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    if-nez p1, :cond_0

    .line 68
    const/16 v4, 0x51

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 75
    :cond_1
    return-void
.end method
