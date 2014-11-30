.class public Lam/sunrise/android/calendar/ui/a/a;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public static a(Landroid/view/Window;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 6

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    const-string v1, "action_bar_title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 34
    const-string v2, "action_bar_subtitle"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    if-nez v1, :cond_2

    .line 37
    const v1, 0x7f0b0017

    .line 38
    const v0, 0x7f0b0018

    move v5, v0

    move v0, v1

    move v1, v5

    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    :cond_1
    return-void

    :cond_2
    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_0
.end method
