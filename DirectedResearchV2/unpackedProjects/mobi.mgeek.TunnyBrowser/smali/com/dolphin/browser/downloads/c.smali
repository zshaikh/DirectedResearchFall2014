.class public Lcom/dolphin/browser/downloads/c;
.super Ljava/lang/Object;
.source "DefaultNotificationHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:Landroid/content/SharedPreferences;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/downloads/R$color;->notification_default_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->h:I

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/downloads/R$color;->notification_default_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->i:I

    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/downloads/c;->f:Landroid/content/SharedPreferences;

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->f:Landroid/content/SharedPreferences;

    const-string v1, "default_notification_have_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    .line 47
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->f:Landroid/content/SharedPreferences;

    const-string v1, "notification_title_color"

    iget v2, p0, Lcom/dolphin/browser/downloads/c;->h:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->b:I

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->f:Landroid/content/SharedPreferences;

    const-string v1, "notification_text_color"

    iget v2, p0, Lcom/dolphin/browser/downloads/c;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->c:I

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->f:Landroid/content/SharedPreferences;

    const-string v1, "notification_title_size"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->d:F

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->f:Landroid/content/SharedPreferences;

    const-string v1, "notification_text_size"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->e:F

    .line 53
    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "title"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, p0, Lcom/dolphin/browser/downloads/c;->b:I

    .line 121
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->d:F

    .line 122
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 124
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    iget v0, p0, Lcom/dolphin/browser/downloads/c;->d:F

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->d:F

    .line 115
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "text"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, p0, Lcom/dolphin/browser/downloads/c;->c:I

    .line 128
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->e:F

    .line 129
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 131
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    iget v0, p0, Lcom/dolphin/browser/downloads/c;->e:F

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/dolphin/browser/downloads/c;->e:F

    goto :goto_1

    .line 134
    :cond_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 135
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/downloads/c;->a(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 138
    :cond_3
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/downloads/c;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    const-string v1, "default_notification_have_value"

    iget-boolean v2, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v1, "notification_title_color"

    iget v2, p0, Lcom/dolphin/browser/downloads/c;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v1, "notification_text_color"

    iget v2, p0, Lcom/dolphin/browser/downloads/c;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v1, "notification_title_size"

    iget v2, p0, Lcom/dolphin/browser/downloads/c;->d:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v1, "notification_text_size"

    iget v2, p0, Lcom/dolphin/browser/downloads/c;->e:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-static {v0}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 63
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, "text"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 97
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    invoke-direct {p0, v0}, Lcom/dolphin/browser/downloads/c;->a(Landroid/view/ViewGroup;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    .line 101
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/c;->e()V

    .line 102
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget v1, p0, Lcom/dolphin/browser/downloads/c;->h:I

    iput v1, p0, Lcom/dolphin/browser/downloads/c;->b:I

    .line 106
    iget v1, p0, Lcom/dolphin/browser/downloads/c;->i:I

    iput v1, p0, Lcom/dolphin/browser/downloads/c;->c:I

    .line 107
    iput v5, p0, Lcom/dolphin/browser/downloads/c;->e:F

    .line 108
    iput v5, p0, Lcom/dolphin/browser/downloads/c;->d:F

    .line 109
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/c;->f()V

    .line 69
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/downloads/c;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/c;->f()V

    .line 76
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/downloads/c;->c:I

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/c;->f()V

    .line 83
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/downloads/c;->d:F

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/c;->g:Z

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/c;->f()V

    .line 90
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/downloads/c;->e:F

    return v0
.end method
